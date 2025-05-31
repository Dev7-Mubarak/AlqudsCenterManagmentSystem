using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.ViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "يرجى اختيار نوع المستخدم")] public string RoleName { get; set; }

        [Required(ErrorMessage = "يرجى إدخال اسم المستخدم")]
        public string Username { get; set; }

        [Required(ErrorMessage = "يرجى إدخال كلمة المرور")]
        [DataType(DataType.Password)]
        public string PasswordHash { get; set; }
    }
}
