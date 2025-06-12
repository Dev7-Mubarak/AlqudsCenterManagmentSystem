using AlqudsProject.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace AlqudsProject.Data.Configurations
{
    public class AppUserSeedConfiguration : IEntityTypeConfiguration<AppUser>
    {
        public void Configure(EntityTypeBuilder<AppUser> builder)
        {
            var adminUserId = "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa";

            var adminUser = new AppUser
            {
                Id = adminUserId,
                UserName = "Admin",
                NormalizedUserName = "ADMIN",
                Email = "admin@example.com",
                NormalizedEmail = "ADMIN@EXAMPLE.COM",
                EmailConfirmed = true,
                PasswordHash = new PasswordHasher<AppUser>().HashPassword(null, "Admin@123")
            };

            builder.HasData(adminUser);
        }
    }
}
