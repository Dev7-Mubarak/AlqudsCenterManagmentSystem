using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.Models
{
    public partial class Parent
    {
        public Parent()
        {
            Students = new HashSet<Student>();
        }

        public int ParentId { get; set; }
        public string? Name { get; set; }

        [RegularExpression(@"^7\d{8}$", ErrorMessage = "رقم الجوال يجب أن يتكون من 9 أرقام ويبدأ بـ 7")]
        public string? MobileNumber { get; set; }
        [RegularExpression(@"^3\d{5}$", ErrorMessage = "رقم الهاتف يجب أن يتكون من 6 أرقام ويبدأ بـ 3")]
        public string? PhoneNumber { get; set; }

        public virtual ICollection<Student> Students { get; set; }
    }
}
