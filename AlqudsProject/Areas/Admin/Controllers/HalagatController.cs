using AlqudsProject.Data;
using AlqudsProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc.Rendering;
using AlqudsProject.ViewModels;

namespace AlqudsProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class HalagatController : Controller
    { 
        private readonly Alquds_CenterContext _context;

        public HalagatController(Alquds_CenterContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var halaqat = _context.Halaqas
                .Include(h => h.Teacher)
                .Include(h => h.AcademicYear)
                .ToList();
            return View(halaqat);
        }


        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var halaqa = _context.Halaqas
        .Include(h => h.Teacher)
        .Include(h => h.AcademicYear)
        .Include(h => h.HalaqaManhajs)
            .ThenInclude(hm => hm.Manhaj)
        .Include(h => h.PathHalaqaRelationships)
            .ThenInclude(hp => hp.MemorizationPath)
        .Include(h => h.Students)
        .FirstOrDefault(h => h.HalaqaId == id);

            if (halaqa == null)
            {
                return NotFound();
            }

            HttpContext.Session.Remove("ShowHalaqaDetailsButton");
            HttpContext.Session.Remove("HalaqaDetailsID");

            return View(halaqa);
        }

        public ActionResult Create()
        {
            var activeAcademicYear = _context.AcademicYears.FirstOrDefault(y => y.IsActive == true);
            if (activeAcademicYear == null)
            {
            }

            var viewModel = new HalaqaCreateViewModel
            {

                Teachers = _context.Teachers.Select(t => new SelectListItem
                {
                    Value = t.TeacherId.ToString(),
                    Text = t.Name
                }).ToList(),

                Paths = _context.MemorizationPath.Select(p => new SelectListItem
                {
                    Value = p.PathId.ToString(),
                    Text = p.Name
                }).ToList(),

                Manhajs = _context.Manhajs.Select(m => new SelectListItem
                {
                    Value = m.ManhajId.ToString(),
                    Text = m.Name
                }).ToList(),

                Periods = new List<SelectListItem>
        {
            new SelectListItem { Value = "صباحية", Text = "صباحية" },
            new SelectListItem { Value = "مسائية", Text = "مسائية" }
        }
            };

            return View(viewModel);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(HalaqaCreateViewModel model)
        {
            var activeAcademicYear = _context.AcademicYears.FirstOrDefault(y => y.IsActive == true);
            if (activeAcademicYear == null)
            {
                ModelState.AddModelError("", "لا توجد سنة دراسية نشطة.");
            }

            if (ModelState.IsValid)
            {
                int academicYearId = activeAcademicYear.AcademicYearId;

                var halaqa = new Halaqa
                {
                    Name = model.Name,
                    Period = model.Period,
                    TeacherId = model.TeacherID,
                    AcademicYearId = academicYearId
                };

                _context.Halaqas.Add(halaqa);
                _context.SaveChanges();


                if (model.SelectedManhajIds != null)
                {
                    foreach (var manhajId in model.SelectedManhajIds)
                    {
                        _context.HalaqaManhajs.Add(new HalaqaManhaj
                        {
                            HalaqaId = halaqa.HalaqaId,
                            ManhajId = manhajId
                        });
                    }
                }

                if (model.SelectedPathIds != null)
                {
                    foreach (var pathId in model.SelectedPathIds)
                    {
                        _context.PathHalaqaRelationships.Add(new PathHalaqaRelationship
                        {
                            HalaqaId = halaqa.HalaqaId,
                            PathId = pathId
                        });
                    }
                }

                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            model.AcademicYearName = activeAcademicYear?.AcademicYear1;

            model.Teachers = _context.Teachers.Select(t => new SelectListItem
            {
                Value = t.TeacherId.ToString(),
                Text = t.Name
            }).ToList();

            model.Paths = _context.MemorizationPath.Select(p => new SelectListItem
            {
                Value = p.PathId.ToString(),
                Text = p.Name
            }).ToList();

            model.Manhajs = _context.Manhajs.Select(m => new SelectListItem
            {
                Value = m.ManhajId.ToString(),
                Text = m.Name
            }).ToList();

            model.Periods = new List<SelectListItem>
    {
        new SelectListItem { Value = "صباحية", Text = "صباحية" },
        new SelectListItem { Value = "مسائية", Text = "مسائية" }
    };

            return View(model);
        }


        public IActionResult Edit(int? id)
        {
            if (id == null)
                return NotFound();

            var halaqa = _context.Halaqas
    .Include(h => h.Teacher)
    .Include(h => h.AcademicYear)
    .Include(h => h.HalaqaManhajs)
        .ThenInclude(hm => hm.Manhaj)
    .Include(h => h.PathHalaqaRelationships)
        .ThenInclude(hp => hp.MemorizationPath)
    .Include(h => h.Students)
    .FirstOrDefault(h => h.HalaqaId == id);


            if (halaqa == null)
                return NotFound();
            var viewModel = new HalaqaCreateViewModel
            {
                Name = halaqa.Name,
                Period = halaqa.Period,
                TeacherID = halaqa.TeacherId,

                SelectedPathIds = halaqa.PathHalaqaRelationships != null
        ? halaqa.PathHalaqaRelationships.Select(p => p.PathId).ToList()
        : new List<int>(),

                SelectedManhajIds = halaqa.HalaqaManhajs != null
        ? halaqa.HalaqaManhajs
            .Where(m => m.ManhajId != null)
            .Select(m => m.ManhajId.Value)
            .ToList()
        : new List<int>(),

                AcademicYearName = _context.AcademicYears
                            .FirstOrDefault(y => y.AcademicYearId == halaqa.AcademicYearId)
                            ?.AcademicYear1 ?? string.Empty,

                Teachers = _context.Teachers.Select(t => new SelectListItem
                {
                    Value = t.TeacherId.ToString(),
                    Text = t.Name
                }).ToList(),

                Paths = _context.MemorizationPath.Select(p => new SelectListItem
                {
                    Value = p.PathId.ToString(),
                    Text = p.Name
                }).ToList(),

                Manhajs = _context.Manhajs.Select(m => new SelectListItem
                {
                    Value = m.ManhajId.ToString(),
                    Text = m.Name
                }).ToList(),

                Periods = new List<SelectListItem>
    {
        new SelectListItem { Value = "صباحية", Text = "صباحية" },
        new SelectListItem { Value = "مسائية", Text = "مسائية" }
    }
            };


            return View(viewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, HalaqaCreateViewModel model)
        {
            var halaqa = _context.Halaqas
                .Include(h => h.HalaqaManhajs)
                .Include(h => h.PathHalaqaRelationships)
                .FirstOrDefault(h => h.HalaqaId == id);

            if (halaqa == null)
                return NotFound();

            if (ModelState.IsValid)
            {
                halaqa.Name = model.Name;
                halaqa.Period = model.Period;
                halaqa.TeacherId = model.TeacherID;


                if (halaqa.HalaqaManhajs.Any())
                    _context.HalaqaManhajs.RemoveRange(halaqa.HalaqaManhajs);

                if (model.SelectedManhajIds != null && model.SelectedManhajIds.Any())
                {
                    foreach (var manhajId in model.SelectedManhajIds)
                    {
                        _context.HalaqaManhajs.Add(new HalaqaManhaj
                        {
                            HalaqaId = halaqa.HalaqaId,
                            ManhajId = manhajId
                        });
                    }
                }


                if (halaqa.PathHalaqaRelationships.Any())
                    _context.PathHalaqaRelationships.RemoveRange(halaqa.PathHalaqaRelationships);

                if (model.SelectedPathIds != null && model.SelectedPathIds.Any())
                {
                    foreach (var pathId in model.SelectedPathIds)
                    {
                        _context.PathHalaqaRelationships.Add(new PathHalaqaRelationship
                        {
                            HalaqaId = halaqa.HalaqaId,
                            PathId = pathId
                        });
                    }
                }

                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }


            model.Teachers = _context.Teachers.Select(t => new SelectListItem
            {
                Value = t.TeacherId.ToString(),
                Text = t.Name
            }).ToList();

            model.AcademicYearName = _context.AcademicYears
                           .FirstOrDefault(y => y.AcademicYearId == halaqa.AcademicYearId)
                           ?.AcademicYear1 ?? string.Empty;

            model.Paths = _context.MemorizationPath.Select(p => new SelectListItem
            {
                Value = p.PathId.ToString(),
                Text = p.Name
            }).ToList();

            model.Manhajs = _context.Manhajs.Select(m => new SelectListItem
            {
                Value = m.ManhajId.ToString(),
                Text = m.Name
            }).ToList();

            model.Periods = new List<SelectListItem>
    {
        new SelectListItem { Value = "صباحية", Text = "صباحية" },
        new SelectListItem { Value = "مسائية", Text = "مسائية" }
    };

            return View(model);
        }



        public IActionResult Delete(int? id)
        {
            if (id == null)
                return NotFound();

            var halaqa = _context.Halaqas
       .Include(h => h.Teacher)
       .Include(h => h.AcademicYear)
       .Include(h => h.HalaqaManhajs)
           .ThenInclude(hm => hm.Manhaj)
       .Include(h => h.PathHalaqaRelationships)
           .ThenInclude(hp => hp.MemorizationPath)
       .Include(h => h.Students)
       .FirstOrDefault(h => h.HalaqaId == id);

            if (halaqa == null)
                return NotFound();

            return View(halaqa);
        }



        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            var halaqa = _context.Halaqas
                .Include(h => h.HalaqaManhajs)
                .Include(h => h.PathHalaqaRelationships)
                .Include(h => h.Students)
                .FirstOrDefault(h => h.HalaqaId == id);

            if (halaqa == null)
                return NotFound();


            if (halaqa.HalaqaManhajs.Any())
                _context.HalaqaManhajs.RemoveRange(halaqa.HalaqaManhajs);

            if (halaqa.PathHalaqaRelationships.Any())
                _context.PathHalaqaRelationships.RemoveRange(halaqa.PathHalaqaRelationships);



            _context.Halaqas.Remove(halaqa);
            _context.SaveChanges();

            return RedirectToAction(nameof(Index));
        }


        private bool HalaqaExists(int id)
        {
            return _context.Halaqas.Any(e => e.HalaqaId == id);
        }
    }

}
