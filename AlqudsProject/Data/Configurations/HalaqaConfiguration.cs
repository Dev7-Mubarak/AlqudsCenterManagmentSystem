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
                new Halaqa { HalaqaId = 1, Name = "���� �����", Period = "�����", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 2, Name = "���� �������", Period = "�����", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 3, Name = "���� �������", Period = "�����", TeacherId = 3, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 4, Name = "���� �����", Period = "�����", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 5, Name = "���� ������", Period = "�����", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 6, Name = "���� ������", Period = "�����", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 7, Name = "���� ����", Period = "�����", TeacherId = 1, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 8, Name = "���� �������", Period = "�����", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 9, Name = "���� ������", Period = "�����", TeacherId = 2, AcademicYearId = 1 },
                new Halaqa { HalaqaId = 10, Name = "���� �������", Period = "�����", TeacherId = 3, AcademicYearId = 1 }
            );
        }
    }
}
