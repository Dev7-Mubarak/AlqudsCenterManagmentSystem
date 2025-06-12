using Microsoft.AspNetCore.Mvc;
using AlqudsProject.ViewModels;
using AlqudsProject.Data;
using AlqudsProject.Models;
namespace AlqudsProject.Areas.Theachers.Controllers
{
    [Area("Theachers")]
    public class ExamsController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public ExamsController(Alquds_CenterContext context)
        {
            _context = context;
        }

        public IActionResult Add(int halaqaId, DateTime? selectedDate, string examType)
        {
            var date = selectedDate ?? DateTime.Today;

            var students = _context.Students
                .Where(s => s.HalaqaId == halaqaId)
                .Select(s => new ExamEntryRow
                {
                    StudentID = s.StudentId,
                    StudentName = s.Name
                }).ToList();

            ViewBag.HalaqaId = halaqaId;
            ViewBag.SelectedDate = date;
            ViewBag.ExamType = examType;

            HttpContext.Session.Remove("ShowHalaqaDetailsButton");
            HttpContext.Session.Remove("HalaqaDetailsID");
            return View(students);
        }

        [HttpPost]
        public IActionResult SaveExam(List<ExamEntryRow> Exams, int HalaqaId, DateTime SelectedDate, string ExamType)
        {
            foreach (var exam in Exams)
            {
                if (exam.MemorizeScore.HasValue && exam.ReviewScore.HasValue)
                {
                    var total = exam.MemorizeScore.Value + exam.ReviewScore.Value;

                    if (ExamType == "شهري")
                    {
                        _context.MonthlyExams.Add(new MonthlyExam
                        {
                            StudentId = exam.StudentID,
                            Date = SelectedDate,
                            MemorizeScore = exam.MemorizeScore.Value,
                            ReviewScore = exam.ReviewScore.Value,
                            TotalScore = total,
                            Notes = exam.Notes
                        });
                    }
                    else if (ExamType == "نهائي")
                    {
                        _context.FinalExams.Add(new FinalExam
                        {
                            StudentId = exam.StudentID,
                            Date = SelectedDate,
                            MemorizeScore = exam.MemorizeScore.Value,
                            ReviewScore = exam.ReviewScore.Value,
                            TotalScore = total,
                            Notes = exam.Notes
                        });
                    }
                }
            }

            _context.SaveChanges();
            TempData["SuccessMessage"] = "تم حفظ درجات الاختبار بنجاح";

            return RedirectToAction("Add", new { halaqaId = HalaqaId, selectedDate = SelectedDate, examType = ExamType });
        }

    }
}
