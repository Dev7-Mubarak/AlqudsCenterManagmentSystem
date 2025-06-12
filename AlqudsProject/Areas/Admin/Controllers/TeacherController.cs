using System;
using System.Collections.Generic;
using AlqudsProject.Data;
using AlqudsProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.View;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AlqudsProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class TeacherController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public TeacherController(Alquds_CenterContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var teachers = _context.Teachers.ToList();
            return View(teachers);
        }
        public IActionResult Details(int? id)
        {
            var teacher = _context.Teachers.FirstOrDefault(t => t.TeacherId == id);
            if (teacher == null) return NotFound();

            var halagat = _context.Halaqas
                .Where(h => h.TeacherId == id)
                .Select(h => new
                {
                    HalaqaName = h.Name,
                    h.Period,
                    AcademicYear = h.AcademicYear.AcademicYear1,
                    StudentCount = _context.Students.Count(s => s.HalaqaId == h.HalaqaId)
                })
                .ToList();

            ViewBag.Halagat = halagat;

            return View(teacher);

        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Teacher teacher)
        {
            var isDuplicateId = _context.Teachers
            .Any(h => h.Idnumber == teacher.Idnumber && h.TeacherId != teacher.TeacherId);

            if (isDuplicateId)
                ModelState.AddModelError("Idnumber", "رقم الهوية مستخدم مسبقًا.");

            if (!string.IsNullOrWhiteSpace(teacher.PhoneNumber))
            {
                var isDuplicatePhone = _context.Teachers
                    .Any(h => h.PhoneNumber == teacher.PhoneNumber && h.TeacherId != teacher.TeacherId);

                if (isDuplicatePhone)
                    ModelState.AddModelError("PhoneNumber", "رقم الجوال مستخدم مسبقًا.");
            }

            if (!string.IsNullOrWhiteSpace(teacher.PassportNumber))
            {
                var isDuplicatePassport = _context.Teachers
                    .Any(h => h.PassportNumber == teacher.PassportNumber && h.TeacherId != teacher.TeacherId);

                if (isDuplicatePassport)
                    ModelState.AddModelError("PassportNumber", "رقم الجواز مستخدم مسبقًا.");
            }

            if (ModelState.IsValid)
            {
                _context.Teachers.Add(teacher);
                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }
            return View(teacher);
        }

        public IActionResult Edit(int? id)
        {
            if (id == null) return NotFound();

            var teacher = _context.Teachers.Find(id);
            if (teacher == null) return NotFound();

            return View(teacher);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, Teacher teacher)
        {
            var isDuplicateId = _context.Teachers
            .Any(h => h.Idnumber == teacher.Idnumber && h.TeacherId != teacher.TeacherId);

            if (isDuplicateId)
                ModelState.AddModelError("Idnumber", "رقم الهوية مستخدم مسبقًا.");

            if (!string.IsNullOrWhiteSpace(teacher.PhoneNumber))
            {
                var isDuplicatePhone = _context.Teachers
                    .Any(h => h.PhoneNumber == teacher.PhoneNumber && h.TeacherId != teacher.TeacherId);

                if (isDuplicatePhone)
                    ModelState.AddModelError("PhoneNumber", "رقم الجوال مستخدم مسبقًا.");
            }

            if (!string.IsNullOrWhiteSpace(teacher.PassportNumber))
            {
                var isDuplicatePassport = _context.Teachers
                    .Any(h => h.PassportNumber == teacher.PassportNumber && h.TeacherId != teacher.TeacherId);

                if (isDuplicatePassport)
                    ModelState.AddModelError("PassportNumber", "رقم الجواز مستخدم مسبقًا.");
            }

            if (id != teacher.TeacherId) return NotFound();

            if (ModelState.IsValid)
            {
                _context.Update(teacher);
                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }
            return View(teacher);
        }


        public IActionResult Delete(int? id)
        {
            if (id == null) return NotFound();

            var teacher = _context.Teachers.FirstOrDefault(t => t.TeacherId == id);
            if (teacher == null) return NotFound();

            return View(teacher);
        }


        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            var teacher = _context.Teachers.Find(id);
            if (teacher == null) return NotFound();

            _context.Teachers.Remove(teacher);
            _context.SaveChanges();
            return RedirectToAction(nameof(Index));
        }
    }
}


