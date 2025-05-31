using AlqudsProject.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AlqudsProject.Controllers
{
    public class DashboardController : Controller
    {

        private readonly Alquds_CenterContext _context;

        public DashboardController(Alquds_CenterContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Admin()
        {
            return View();
        }

        public IActionResult Teacher()
        {

            var teacherId = HttpContext.Session.GetInt32("TeacherID");
            var halaqa = _context.Halaqas
                                  .Where(h => h.TeacherId == teacherId)
                                  .ToList();

            return View("TeacherHalaqatCards", halaqa); 
        }

    }
}
