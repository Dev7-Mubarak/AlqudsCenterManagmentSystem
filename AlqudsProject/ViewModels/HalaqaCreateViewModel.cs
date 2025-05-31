using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.ViewModels
{
    public class HalaqaCreateViewModel
    {
        public int? HalaqaId { get; set; }

        [Required(ErrorMessage = "اسم الحلقة مطلوب")]
        [StringLength(30, MinimumLength = 3, ErrorMessage = "اسم الحلقة يجب أن يكون بين 3 و 30 حرفًا")]
        public string Name { get; set; }

        [Required(ErrorMessage = "يجب اختيار المعلمة")]
        public int? TeacherID { get; set; }
        public int? PathID { get; set; }
        public int? ManhajID { get; set; }

        [Required(ErrorMessage = "فترة الحلقة مطلوبة")]
        public string Period { get; set; }

        [ValidateNever]
        public string AcademicYearName { get; set; }

        [ValidateNever]
        public List<SelectListItem> Teachers { get; set; }

        [ValidateNever]
        public List<SelectListItem> Paths { get; set; }

        [ValidateNever]
        public List<SelectListItem> Manhajs { get; set; }

        [ValidateNever]
        public List<SelectListItem> Periods { get; set; }

        [Required(ErrorMessage = "يجب اختيار المسار")]
        public List<int> SelectedPathIds { get; set; } = new List<int>();
        [Required(ErrorMessage = "يجب اختيار المنهج")]
        public List<int> SelectedManhajIds { get; set; } = new List<int>();
    }
}




