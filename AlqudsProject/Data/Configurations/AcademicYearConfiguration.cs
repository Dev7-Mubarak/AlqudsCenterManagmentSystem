using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class AcademicYearConfiguration : IEntityTypeConfiguration<AcademicYear>
    {
        public void Configure(EntityTypeBuilder<AcademicYear> builder)
        {
            builder.ToTable("AcademicYear");

            builder.HasKey(e => e.AcademicYearId);
            builder.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

            builder.Property(e => e.AcademicYear1)
                .HasMaxLength(50)
                .HasColumnName("AcademicYear");

            builder.Property(e => e.DateOfBeginYear).HasColumnType("date");
            builder.Property(e => e.DateOfEndYear).HasColumnType("date");
            builder.Property(e => e.StudentRegistrationSuspensionDate).HasColumnType("date");

            // Seed Arabic data
            builder.HasData(
                new AcademicYear
                {
                    AcademicYearId = 1,
                    AcademicYear1 = "2023-2024",
                    DateOfBeginYear = new DateTime(2023, 9, 1),
                    DateOfEndYear = new DateTime(2024, 6, 30),
                    StudentRegistrationSuspensionDate = new DateTime(2023, 10, 15)
                },
                new AcademicYear
                {
                    AcademicYearId = 2,
                    AcademicYear1 = "2024-2025",
                    DateOfBeginYear = new DateTime(2024, 9, 1),
                    DateOfEndYear = new DateTime(2025, 6, 30),
                    StudentRegistrationSuspensionDate = new DateTime(2024, 10, 15)
                }
            );
        }
    }
}
