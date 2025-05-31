using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.Models
{
    public partial class Teacher
    {
        public Teacher()
        {
            Halaqas = new HashSet<Halaqa>();
            TeacherAttendances = new HashSet<TeacherAttendance>();
        }

        [Key]
        public int TeacherId { get; set; }

        [Required(ErrorMessage = "الاسم مطلوب")]
        [StringLength(25, MinimumLength = 7, ErrorMessage = "الاسم يجب أن يكون بين 7 و 25 حرفًا")]
        public string Name { get; set; } = null!;

        [DataType(DataType.Date)]
        public DateTime? BirthDate { get; set; }

        [Required(ErrorMessage = "رقم الجوال مطلوب")]
        [RegularExpression(@"^\d{9}$", ErrorMessage = "رقم الجوال يجب أن يتكون من 9 أرقام")]
        public string? PhoneNumber { get; set; }

        [Required(ErrorMessage = "العنوان مطلوب")]
        [StringLength(30, ErrorMessage = "العنوان يجب ألا يتجاوز 100 حرف")]
        public string? Address { get; set; }

        [StringLength(30,ErrorMessage = "الوظيفة يجب ألا تتجاوز 30 حرف")]
        public string? Job { get; set; }

        [StringLength(8, ErrorMessage = "رقم الجواز يجب أن يكون 8 أرقام")]
        public string? PassportNumber { get; set; }

        [Required(ErrorMessage = "رقم الهوية مطلوب")]
        [StringLength(11, ErrorMessage = "رقم الهوية يجب أن يكون 11 رقم")]
        public string Idnumber { get; set; } = null!;

        [StringLength(50, ErrorMessage = "المؤهل التعليمي يجب ألا تتجاوز 50 حرف")]
        public string? EducationalQualification { get; set; }

        [StringLength(50, ErrorMessage = "الخبرات يجب ألا تتجاوز 50 حرف")]
        public string? Experience { get; set; }

        [StringLength(50, ErrorMessage = "الدورات يجب ألا تتجاوز 50 حرف")]
        public string? Courses { get; set; }

        [Required(ErrorMessage = "الحاله الأجتماعية مطلوب")]
        [StringLength(20, ErrorMessage = "الحاله الأجتماعية يجب ألا تتجاوز 30 حرف")]
        public string? MaritalStatus { get; set; }

        public bool IsAdministrator { get; set; }

        public bool IsMojaz { get; set; }

        [Required(ErrorMessage = "مقدار الحفظ مطلوب")]
        [StringLength(30, ErrorMessage = "مقدار الحفظ يجب ألا تتجاوز 30 حرف")]
        public string? AmountOfMemorization { get; set; }

        public virtual ICollection<Halaqa> Halaqas { get; set; }
        public virtual ICollection<TeacherAttendance> TeacherAttendances { get; set; }
    }
}
