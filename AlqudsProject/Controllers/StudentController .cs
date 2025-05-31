using System;
using System.Collections.Generic;
using AlqudsProject.Data;
using AlqudsProject.Models;
using AlqudsProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.View;
using Microsoft.AspNetCore.Mvc.Rendering;





namespace AlqudsProject.Controllers
{
    public class StudentController : Controller
    {        
        private readonly Alquds_CenterContext _context;

        public StudentController(Alquds_CenterContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var students = _context.Students
                .Include(s => s.Halaqa)
                .Include(s => s.Parent)
                .ToList();
            return View(students);
        }

        public IActionResult Details(int id)
        {
            var student = _context.Students
                .Include(s => s.Halaqa)
                .Include(s => s.Parent)
                .FirstOrDefault(s => s.StudentId == id);
            if (student == null)
                return NotFound();

            HttpContext.Session.Remove("ShowHalaqaDetailsButton");
            HttpContext.Session.Remove("HalaqaDetailsID");
            return View(student);
        }

        public IActionResult Create()
        {
            var model = new StudentFormViewModel
            {
                Halaqas = _context.Halaqas.Select(h => new SelectListItem
                {
                    Value = h.HalaqaId.ToString(),
                    Text = h.Name
                }).ToList(),

                Parents = _context.Parents.Select(p => new SelectListItem
                {
                    Value = p.ParentId.ToString(),
                    Text = p.Name
                }).ToList()
            };

            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(StudentFormViewModel model)
        {
            if (ModelState.IsValid)
            {
                int? parentId = model.ParentID;
                if (!string.IsNullOrWhiteSpace(model.PhoneNumber) &&
                !System.Text.RegularExpressions.Regex.IsMatch(model.PhoneNumber, @"^7\d{8}$"))
                {
                    ModelState.AddModelError("PhoneNumber", "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7.");
                    return View(model);
                }

                if (model.AddNewParent && model.NewParent != null && !string.IsNullOrWhiteSpace(model.NewParent.Name))
                {

                    if (_context.Parents.Any(p => p.Name == model.NewParent.Name))
                    {
                        ModelState.AddModelError("NewParent.Name", "اسم ولي الأمر موجود مسبقًا.");
                    }

                    if (!string.IsNullOrWhiteSpace(model.NewParent.MobileNumber) &&
                        !System.Text.RegularExpressions.Regex.IsMatch(model.NewParent.MobileNumber, @"^7\d{8}$"))
                    {
                        ModelState.AddModelError("NewParent.MobileNumber", "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7.");

                    }

                    if (!string.IsNullOrWhiteSpace(model.NewParent.PhoneNumber) &&
                        !System.Text.RegularExpressions.Regex.IsMatch(model.NewParent.PhoneNumber, @"^3\d{5}$"))
                    {
                        ModelState.AddModelError("NewParent.PhoneNumber", "رقم الهاتف يجب أن يحتوي على 6 أرقام ويبدأ بـ 3.");
                    }


                    var newParent = new Parent
                    {
                        Name = model.NewParent.Name,
                        MobileNumber = model.NewParent.MobileNumber,
                        PhoneNumber = model.NewParent.PhoneNumber
                    };

                    _context.Parents.Add(newParent);
                    _context.SaveChanges();


                    parentId = newParent.ParentId;
                }


                var student = new Student
                {
                    Name = model.Name,
                    BirthDate = model.BirthDate,
                    PhoneNumber = model.PhoneNumber,
                    Address = model.Address,
                    CurrentEducationalLevel = model.CurrentEducationalLevel,
                    EducationalQualification = model.EducationalQualification,
                    HalaqaId = model.HalaqaID,
                    ParentId = parentId
                };

                _context.Students.Add(student);
                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }


            model.Halaqas = _context.Halaqas.Select(h => new SelectListItem
            {
                Value = h.HalaqaId.ToString(),
                Text = h.Name
            }).ToList();

            model.Parents = _context.Parents.Select(p => new SelectListItem
            {
                Value = p.ParentId.ToString(),
                Text = p.Name
            }).ToList();

            return View(model);
        }

        public IActionResult Edit(int id)
        {
            var student = _context.Students.Find(id);
            if (student == null)
            {
                return NotFound();
            }

            var model = new StudentFormViewModel
            {
                StudentID = student.StudentId,
                Name = student.Name,
                BirthDate = student.BirthDate,
                PhoneNumber = student.PhoneNumber,
                Address = student.Address,
                CurrentEducationalLevel = student.CurrentEducationalLevel,
                EducationalQualification = student.EducationalQualification,
                HalaqaID = student.HalaqaId,
                ParentID = student.ParentId,

                Halaqas = _context.Halaqas.Select(h => new SelectListItem
                {
                    Value = h.HalaqaId.ToString(),
                    Text = h.Name
                }).ToList(),

                Parents = _context.Parents.Select(p => new SelectListItem
                {
                    Value = p.ParentId.ToString(),
                    Text = p.Name
                }).ToList()
            };

            return View(model);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, StudentFormViewModel model)
        {
            if (id != model.StudentID)
            {
                return NotFound();
            }

            if (_context.Students.Any(s => s.Name == model.Name && s.StudentId != id))
            {
                ModelState.AddModelError("Name", "اسم الطالبة موجود مسبقًا.");
            }

            if (!string.IsNullOrWhiteSpace(model.PhoneNumber) &&
                !System.Text.RegularExpressions.Regex.IsMatch(model.PhoneNumber, @"^7\d{8}$"))
            {
                ModelState.AddModelError("PhoneNumber", "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7.");
            }

            int? parentId = model.ParentID;

            if (model.AddNewParent && model.NewParent != null && !string.IsNullOrWhiteSpace(model.NewParent.Name))
            {
                if (_context.Parents.Any(p => p.Name == model.NewParent.Name))
                {
                    ModelState.AddModelError("NewParent.Name", "اسم ولي الأمر موجود مسبقًا.");
                }

                if (!string.IsNullOrWhiteSpace(model.NewParent.MobileNumber) &&
                    !System.Text.RegularExpressions.Regex.IsMatch(model.NewParent.MobileNumber, @"^7\d{8}$"))
                {
                    ModelState.AddModelError("NewParent.MobileNumber", "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7.");

                }

                if (!string.IsNullOrWhiteSpace(model.NewParent.PhoneNumber) &&
                    !System.Text.RegularExpressions.Regex.IsMatch(model.NewParent.PhoneNumber, @"^3\d{5}$"))
                {
                    ModelState.AddModelError("NewParent.PhoneNumber", "رقم الهاتف يجب أن يحتوي على 6 أرقام ويبدأ بـ 3.");
                }

                if (ModelState.IsValid)
                {
                    var newParent = new Parent
                    {
                        Name = model.NewParent.Name,
                        MobileNumber = model.NewParent.MobileNumber,
                        PhoneNumber = model.NewParent.PhoneNumber
                    };

                    _context.Parents.Add(newParent);
                    _context.SaveChanges();

                    parentId = newParent.ParentId;
                }
            }

            if (ModelState.IsValid)
            {
                var student = _context.Students.Find(id);
                if (student == null)
                {
                    return NotFound();
                }

                student.Name = model.Name;
                student.BirthDate = model.BirthDate;
                student.PhoneNumber = model.PhoneNumber;
                student.Address = model.Address;
                student.CurrentEducationalLevel = model.CurrentEducationalLevel;
                student.EducationalQualification = model.EducationalQualification;
                student.HalaqaId = model.HalaqaID;
                student.ParentId = parentId;

                _context.Update(student);
                _context.SaveChanges();

                return RedirectToAction(nameof(Index));
            }


            model.Halaqas = _context.Halaqas.Select(h => new SelectListItem
            {
                Value = h.HalaqaId.ToString(),
                Text = h.Name
            }).ToList();

            model.Parents = _context.Parents.Select(p => new SelectListItem
            {
                Value = p.ParentId.ToString(),
                Text = p.Name
            }).ToList();

            return View(model);
        }





        public IActionResult Delete(int id)
        {
            var student = _context.Students
                .Include(s => s.Halaqa)
                .Include(s => s.Parent)
                .FirstOrDefault(s => s.StudentId == id);

            if (student == null)
                return NotFound();

            return View(student);
        }


        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var student = _context.Students.Find(id);
            if (student == null)
                return NotFound();

            _context.Students.Remove(student);
            _context.SaveChanges();
            return RedirectToAction(nameof(Index));
        }
    }
}
