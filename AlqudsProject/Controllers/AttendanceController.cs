using Microsoft.AspNetCore.Mvc;
using AlqudsProject.ViewModels;
using AlqudsProject.Data;
using AlqudsProject.Models;



namespace AlqudsProject.Controllers
{
    public class AttendanceController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public AttendanceController(Alquds_CenterContext context)
        {
            _context = context;
        }
        public IActionResult StudentsDaily(int halaqaId, DateTime? selectedDate)
        {
            var date = selectedDate ?? DateTime.Today;

            var students = _context.Students
                .Where(s => s.HalaqaId == halaqaId)
                .Select(s => new StudentDailyRow
                {
                    StudentID = s.StudentId,
                    StudentName = s.Name,
                    TodaysMemorize = _context.DailyMemorizePlans
                        .Where(d => d.MemorizePlan.StudentId == s.StudentId && d.Date == date)
                        .Select(d => d.Surah + " - " + d.Amount)
                        .FirstOrDefault(),

                    AttendanceStatus = _context.DailyEvaluations
                        .Where(e => e.StudentId == s.StudentId && e.Date == date)
                        .Select(e => e.AttendanceStatus)
                        .FirstOrDefault(),

                    MemorizeScore = _context.DailyEvaluations
                        .Where(e => e.StudentId == s.StudentId && e.Date == date)
                        .Select(e => e.MemorizeScore)
                        .FirstOrDefault(),

                    ReviewScore = _context.DailyEvaluations
                        .Where(e => e.StudentId == s.StudentId && e.Date == date)
                        .Select(e => e.ReviewScore)
                        .FirstOrDefault(),

                    TotalScore = _context.DailyEvaluations
                        .Where(e => e.StudentId == s.StudentId && e.Date == date)
                        .Select(e => e.TotalScore)
                        .FirstOrDefault()
                }).ToList();

            ViewBag.HalaqaId = halaqaId;
            ViewBag.SelectedDate = date;
            ViewBag.IsReadOnly = date < DateTime.Today;
            HttpContext.Session.SetString("ShowHalaqaDetailsButton", "true");
            HttpContext.Session.SetInt32("HalaqaDetailsID", halaqaId);


            return View(students);
        }

        [HttpPost]
        public IActionResult SaveDailyEvaluations(List<DailyEvaluation> Evaluations, int HalaqaId, DateTime SelectedDate)
        {
            foreach (var eval in Evaluations)
            {
                var existingEvaluation = _context.DailyEvaluations
                    .FirstOrDefault(e => e.StudentId == eval.StudentId && e.Date == SelectedDate);

                if (existingEvaluation != null)
                {
                    existingEvaluation.AttendanceStatus = eval.AttendanceStatus;
                    existingEvaluation.MemorizeScore = eval.MemorizeScore;
                    existingEvaluation.ReviewScore = eval.ReviewScore;
                    existingEvaluation.TotalScore = eval.TotalScore;
                }
                else
                {
                    eval.Date = SelectedDate;
                    _context.DailyEvaluations.Add(eval);
                }
            }

            _context.SaveChanges();

            TempData["SuccessMessage"] = "تم حفظ التقييمات بنجاح";

            return RedirectToAction("StudentsDaily", new { halaqaId = HalaqaId, selectedDate = SelectedDate });
        }
        public IActionResult TeachersDaily(DateTime? selectedDate)
        {
        //    var date = selectedDate ?? DateTime.Today;

        //    var teachers = _context.Teachers
        //        .Select(t => new TeacherDailyRow
        //        {
        //            TeacherID = t.TeacherId,
        //            TeacherName = t.Name,
        //            AttendanceStatus = _context.TeacherAttendances
        //                .Where(a => a.TeacherId == t.TeacherId && a.Date == date)
        //                .Select(a => a.Status)
        //                .FirstOrDefault(),
        //            RecorderName = (from a in _context.TeacherAttendances
        //                            join account in _context.Accounts on a.RecordedBy equals account.AccountId
        //                            where a.TeacherId == t.TeacherId && a.Date == date
        //                            select account.FullName).FirstOrDefault() 
        //}).ToList();

        //    ViewBag.SelectedDate = date;
        //    ViewBag.IsReadOnly = date < DateTime.Today;

            //return View(teachers);
            return View();
        }


        [HttpPost]
        public IActionResult SaveTeacherDailyAttendances(List<TeacherAttendance> Attendances, DateTime SelectedDate)
        {

            var recordedById = GetCurrentAccountID();
            if (recordedById == null)
            {
                TempData["ErrorMessage"] = "الرجاء تسجيل الدخول أولاً.";
                return RedirectToAction("Login", "Account");
            }

            foreach (var attendance in Attendances)
            {
                var existing = _context.TeacherAttendances
                    .FirstOrDefault(a => a.TeacherId == attendance.TeacherId && a.Date == SelectedDate);

                if (existing != null)
                {
                    existing.Status = attendance.Status;
                }
                else
                {
                    attendance.Date = SelectedDate;
                    attendance.RecordedBy = recordedById;
                    if (string.IsNullOrEmpty(attendance.Status))
                    {
                        attendance.Status = "حاضر";
                    }
                    _context.TeacherAttendances.Add(attendance);
                }
            }

            _context.SaveChanges();
            TempData["SuccessMessage"] = "تم حفظ تحضير المعلمات بنجاح";

            return RedirectToAction("TeachersDaily", new { selectedDate = SelectedDate });
        }
        private int? GetCurrentAccountID()
        {
            return HttpContext.Session.GetInt32("AccountId");
        }

    }
}
