using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using AlqudsProject.Models;
namespace AlqudsProject.ViewModels
{
    public class StudentFormViewModel
    {
        public int? StudentID { get; set; }

        [Required(ErrorMessage = "اسم الطالبة مطلوب")]
        [StringLength(25, MinimumLength = 7, ErrorMessage = "اسم الطالبة يجب أن يكون بين 7 و 25 حرفًا")]
        public string Name { get; set; }

        [DataType(DataType.Date)]
        public DateTime? BirthDate { get; set; }

        [RegularExpression(@"^7\d{8}$", ErrorMessage = "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7")]

        public string? PhoneNumber { get; set; }

        [Required(ErrorMessage = "العنوان مطلوب")]
        [StringLength(30, ErrorMessage = "العنوان يجب ألا يتجاوز 30 حرف")]
        public string Address { get; set; }

        [Required(ErrorMessage = "المستوى التعليمي الحالي مطلوب")]
        [StringLength(30, ErrorMessage = "المستوى التعليمي يجب ألا يتجاوز 30 حرف")]
        public string CurrentEducationalLevel { get; set; }

        [StringLength(50, ErrorMessage = "المؤهل التعليمي يجب ألا يتجاوز 50 حرف")]
        public string EducationalQualification { get; set; }

        [Required(ErrorMessage = "اختر حلقة")]
        public int HalaqaID { get; set; }

        public int? ParentID { get; set; }

        public Parent NewParent { get; set; } = new Parent();

        [ValidateNever]
        public List<SelectListItem> Halaqas { get; set; }

        [ValidateNever]
        public List<SelectListItem> Parents { get; set; }

        public bool AddNewParent { get; set; } = false;
    }
}
