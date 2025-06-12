using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class RoleConfiguration : IEntityTypeConfiguration<Role>
    {
        public void Configure(EntityTypeBuilder<Role> builder)
        {
            builder.ToTable("Role");

            builder.HasKey(e => e.RoleId);
            builder.Property(e => e.RoleId).HasColumnName("RoleID");

            builder.Property(e => e.RoleName)
                .HasMaxLength(50)
                .IsUnicode(true);

            // Seed data
            builder.HasData(
                new Role { RoleId = 1, RoleName = "≈œ«—Ì" },
                new Role { RoleId = 2, RoleName = "„⁄·„" }
            );
        }
    }
}
