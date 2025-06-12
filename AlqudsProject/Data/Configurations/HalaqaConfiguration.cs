using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class HalaqaConfiguration : IEntityTypeConfiguration<Halaqa>
    {
        public void Configure(EntityTypeBuilder<Halaqa> builder)
        {
            builder.ToTable("Halaqa");

            builder.HasKey(e => e.HalaqaId);
            builder.Property(e => e.HalaqaId).HasColumnName("HalaqaID");
            builder.Property(e => e.Name).HasMaxLength(100);
            builder.Property(e => e.Period).HasMaxLength(50);
            builder.Property(e => e.TeacherId).HasColumnName("TeacherID");
            builder.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

            // Seed Arabic data
            builder.HasData(
                new Halaqa { HalaqaId = 1, Name = "Õ·ﬁ… «·‰Ê—", Period = "’»«ÕÌ", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 2, Name = "Õ·ﬁ… «·›—ﬁ«‰", Period = "„”«∆Ì", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 3, Name = "Õ·ﬁ… «·≈Ì„«‰", Period = "’»«ÕÌ", TeacherId = 3, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 4, Name = "Õ·ﬁ… «·ÂœÏ", Period = "„”«∆Ì", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 5, Name = "Õ·ﬁ… «·›·«Õ", Period = "’»«ÕÌ", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 6, Name = "Õ·ﬁ… «· ﬁÊÏ", Period = "„”«∆Ì", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 7, Name = "Õ·ﬁ… «·»—", Period = "’»«ÕÌ", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 8, Name = "Õ·ﬁ… «·≈Õ”«‰", Period = "„”«∆Ì", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 9, Name = "Õ·ﬁ… «·’œÌﬁ", Period = "’»«ÕÌ", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 10, Name = "Õ·ﬁ… «·›«—Êﬁ", Period = "„”«∆Ì", TeacherId = 3, AcademicYearId = 1 }
            );
        }
    }
}
