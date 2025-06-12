using AlqudsProject.Data;
using AlqudsProject.Models;
using AlqudsProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;


namespace AlqudsProject.Controllers
{
    public class HomeController : Controller
    {        
        private readonly Alquds_CenterContext _context;

        public HomeController(Alquds_CenterContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var report = _context.CenterAnnualReports.FirstOrDefault() ?? new CenterAnnualReport();

            var expenses = _context.Expenses
                .Where(e => e.IsActivity.HasValue && e.IsActivity.Value == true)
                .ToList();

            var images = _context.ActivitiesImages.ToList();

            // ربط الصور بالأنشطة في الذاكرة
            var activities = (from expense in expenses
                              join image in images on expense.ExpenseId equals image.ExpenseId into imgGroup
                              let img = imgGroup.FirstOrDefault()
                              select new ActivityViewModel
                              {
                                  Id = expense.ExpenseId,
                                  Title = expense.Title,
                                  Description = expense.Description ?? "",
                                  ImageUrl = img != null ? img.ImageUrl : "/images/default.jpg"
                              }).Take(3).ToList();

            var viewModel = new CenterPageViewModel
            {
                Report = report,
                Activities = activities
            };

            return View(viewModel);
        }

        public IActionResult Details(int id)
        {
            var expense = _context.Expenses.FirstOrDefault(e => e.ExpenseId== id);
            if (expense == null) return NotFound();

            var images = _context.ActivitiesImages
                .Where(img => img.ExpenseId == id)
                .Select(img => img.ImageUrl)
                .ToList();

            var viewModel = new NewsDetailsViewModel
            {
                Id = expense.ExpenseId,
                Title = expense.Title,
                Description = expense.Description,
                Notes = expense.Notes,
                ImagePaths = images

            };

            return View(viewModel);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }


        [HttpGet]
        public IActionResult Login()
        {
            ViewBag.Roles = _context.Roles.ToList();
            return View();
        }

        // تنفيذ تسجيل الدخول
        [HttpPost]
        public IActionResult Login(LoginViewModel model)
        {
            if (!ModelState.IsValid) { 
                ViewBag.Roles = _context.Roles.ToList();
                return View(model);
            }

            //var user = _context.Accounts
            //    .FirstOrDefault(a => a.Username == model.Username && a.PasswordHash == model.PasswordHash);

            //if (user != null)
            //{
            //    var roleAccount = _context.RoleAccounts
            //        .FirstOrDefault(ra => ra.AccountId == user.AccountId);

            //    if (roleAccount != null)
            //    {
            //        var role = _context.Roles
            //            .FirstOrDefault(r => r.RoleId == roleAccount.RoleId);

            //        if (role != null && role.RoleName == model.RoleName)
            //        {
            //            HttpContext.Session.SetInt32("AccountId", user.AccountId);
            //            HttpContext.Session.SetString("UserRole", role.RoleName);
            //            HttpContext.Session.SetString("Username", user.Username);

            //            if (role.RoleName == "معلم")
            //            {
            //                HttpContext.Session.SetInt32("TeacherID", roleAccount.TeacherId.Value);

            //                int halaqatCount = _context.Halaqas
            //                    .Count(h => h.TeacherId == roleAccount.TeacherId);
            //                HttpContext.Session.SetInt32("HalaqatCount", halaqatCount);
            //            }

            //            // رسالة نجاح
            //            TempData["Success"] = "تم تسجيل الدخول بنجاح";

            //            return RedirectToAction("Index", "Home");
            //        }
            //    }
            //}
            TempData["Error"] = "ليس لديك صلاحية الدخول";
            return RedirectToAction("Index", "Home");

        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear(); 
            TempData["Success"] = "تم تسجيل الخروج بنجاح";
            return RedirectToAction("Index", "Home"); 
        }

    }
}

