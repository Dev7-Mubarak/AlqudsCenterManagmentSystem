using Microsoft.AspNetCore.Mvc;
using AlqudsProject.ViewModels;
using AlqudsProject.Data;
using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
namespace AlqudsProject.Controllers
{
    public class StudentPlanController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public StudentPlanController(Alquds_CenterContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Show(int studentId)
        {
            // 1. جلب السنة الدراسية النشطة
            var activeYear = GetActiveAcademicYear();
            var student = _context.Students.FirstOrDefault(x => x.StudentId == studentId);
            // 2. البحث عن خطة موجودة للطالب ضمن فترة السنة الدراسية
            var existingPlan = _context.MemorizePlans
                .Include(p => p.DailyMemorizePlans)
                .FirstOrDefault(p =>
                    p.StudentId == studentId &&
                    p.Date >= activeYear.DateOfBeginYear &&
                    p.Date <= activeYear.DateOfEndYear
                );


            var viewModel = new MemorizePlanViewModel
            {
                StudentId = studentId
            };

            if (existingPlan != null)
            {
                viewModel.PlanId = existingPlan.MemorizePlanId;
                viewModel.StartDate = existingPlan.Date!.Value;
                viewModel.BeginPage = existingPlan.BeginPage ?? 0;
                viewModel.DailyAmount = existingPlan.DailyAmount ?? 0;
                viewModel.DailyDetails = existingPlan.DailyMemorizePlans
                    .OrderBy(p => p.Date)
                    .Select(p => new DailyMemorizePlanViewModel
                    {
                        Day = p.Day!,
                        Date = p.Date!.Value,
                        Surah = p.Surah!,
                        FromPage = (int)p.FromPage,
                        ToPage = (int)p.ToPage,
                        Amount = p.Amount!
                    })

                    .ToList();
            }
            else
            {
                // إذا مافي خطة مسبقة: ممكن نعطي قيمة افتراضية لبدء الحفظ
                viewModel.StartDate = activeYear.DateOfBeginYear.Value;
                viewModel.BeginPage = 0;
                viewModel.DailyAmount = 1;
                viewModel.DailyDetails = new List<DailyMemorizePlanViewModel>();
            }

            ViewBag.AcademicYearBegin = activeYear.DateOfBeginYear.Value.ToString("yyyy-MM-dd");
            ViewBag.AcademicYearEnd = activeYear.DateOfEndYear.Value.ToString("yyyy-MM-dd");
            ViewBag.halaqaId = student.HalaqaId;


            HttpContext.Session.Remove("ShowHalaqaDetailsButton");
            HttpContext.Session.Remove("HalaqaDetailsID");
            return View(viewModel);

        }
        [HttpPost]
        public IActionResult SubmitPlan(MemorizePlanViewModel model)
        {
            // 1. التحقق من صحة البيانات
            if (!ModelState.IsValid)
                return View("Show", model);

            // 2. جلب الطالب
            var student = _context.Students
                .FirstOrDefault(s => s.StudentId == model.StudentId);
            if (student == null)
            {
                ModelState.AddModelError("", "الطالب غير موجود.");
                return View("Show", model);
            }

            // 3. جلب السنة الدراسية النشطة
            var activeYear = GetActiveAcademicYear();

            // 4. حذف الخطة القديمة إذا كانت ضمن السنة الدراسية الحالية
            var oldPlan = _context.MemorizePlans
                .Include(p => p.DailyMemorizePlans)
                .FirstOrDefault(p =>
                    p.StudentId == model.StudentId &&
                    p.Date >= activeYear.DateOfBeginYear &&
                    p.Date <= activeYear.DateOfEndYear
                );
            if (oldPlan != null)
            {
                _context.DailyMemorizePlans.RemoveRange(oldPlan.DailyMemorizePlans);
                _context.MemorizePlans.Remove(oldPlan);
                _context.SaveChanges();
            }

            // 5. إنشاء سجل الخطة الرئيسي
            var plan = new MemorizePlan
            {
                StudentId = model.StudentId,
                Date = model.StartDate,
                BeginPage = model.BeginPage,
                DailyAmount = model.DailyAmount
            };

            // 6. توليد تفاصيل الخطة مع تحديد انتهاء الخطة عند تاريخ نهاية السنة الدراسية
            var dbDailyList = model.GenerateDailyPlan(activeYear.DateOfEndYear.Value);
            plan.DailyMemorizePlans = dbDailyList;

            // 7. حفظ الخطة والتفاصيل
            _context.MemorizePlans.Add(plan);
            _context.SaveChanges();

            // 8. إعداد الـ ViewModel للعرض بنجاح
            model.PlanId = plan.MemorizePlanId;
            model.DailyDetails = dbDailyList
                .Select(d => new DailyMemorizePlanViewModel
                {
                    Day = d.Day!,
                    Date = d.Date!.Value,
                    Surah = d.Surah!,
                    FromPage = (int)Convert.ToSingle(d.FromPage),
                    ToPage = (int)Convert.ToSingle(d.ToPage),
                    Amount = d.Amount!
                })
                .ToList();

            ViewBag.Message = "تم إنشاء/تعديل الخطة بنجاح";
            return View("Show", model);
        }

        private AcademicYear GetActiveAcademicYear()
        {
            var year = _context.AcademicYears
                .FirstOrDefault(y => y.IsActive == true);
            if (year == null)
                throw new InvalidOperationException("لا توجد سنة دراسية فعالة.");
            return year;
        }

    }
}
