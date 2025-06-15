using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.Models
{
    public class AppUser : IdentityUser
    {
        [Required,StringLength(100, ErrorMessage = "الاسم لايجب ان يكون اكثر من 100 حرف")]
        public string FirstName { get; set; } = string.Empty;
        [Required, StringLength(100, ErrorMessage = "الاسم لايجب ان يكون اكثر من 100 حرف")]

        public string LastName { get; set; } = string.Empty;
        public byte[]? ProfilePicture { get; set; } = null;
    }
}
