using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace AlqudsProject.Data.Configurations
{
    public class StudentConfiguration : IEntityTypeConfiguration<Student>
    {
        public void Configure(EntityTypeBuilder<Student> builder)
        {
            builder.ToTable("Student");

            builder.HasKey(e => e.StudentId);
            builder.Property(e => e.StudentId).HasColumnName("StudentID");

            builder.Property(e => e.Name).HasMaxLength(100);
            builder.Property(e => e.BirthDate).HasColumnType("date");
            builder.Property(e => e.PhoneNumber).HasMaxLength(20);
            builder.Property(e => e.Address).HasMaxLength(200);
            builder.Property(e => e.CurrentEducationalLevel).HasMaxLength(100);
            builder.Property(e => e.EducationalQualification).HasMaxLength(100);
            builder.Property(e => e.HalaqaId).HasColumnName("HalaqaID");
            builder.Property(e => e.ParentId).HasColumnName("ParentID");
            builder.Property(e => e.BeginOfMemorize).HasMaxLength(50);
            builder.Property(e => e.MemorizationQuorum).HasMaxLength(50);

            builder.HasOne(d => d.Halaqa)
                .WithMany(p => p.Students)
                .HasForeignKey(d => d.HalaqaId)
                .HasConstraintName("FK__Student__HalaqaI__73BA3083");

            builder.HasOne(d => d.Parent)
                .WithMany(p => p.Students)
                .HasForeignKey(d => d.ParentId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK__Student__ParentI__74AE54BC");

            // Seed data
            builder.HasData(
                new Student { StudentId = 2, Name = "ليلى أحمد علي", BirthDate = new DateTime(2013, 5, 10), PhoneNumber = null, Address = "المكلا", CurrentEducationalLevel = "ابتدائي", EducationalQualification = "ابتدائي", HalaqaId = 1, ParentId = 1, BeginOfMemorize = "الناس", MemorizationQuorum = "جزء عم" },
                new Student { StudentId = 3, Name = "نور محمد عمر", BirthDate = new DateTime(2011, 8, 15), PhoneNumber = "712222222", Address = "المكلا", CurrentEducationalLevel = "إعدادي", EducationalQualification = "إعدادي", HalaqaId = 2, ParentId = 2, BeginOfMemorize = "ق", MemorizationQuorum = "جزء تبارك" },
                new Student { StudentId = 4, Name = "هدى يوسف خالد", BirthDate = new DateTime(2008, 3, 20), PhoneNumber = "713333333", Address = "المكلا", CurrentEducationalLevel = "ثانوي", EducationalQualification = "ثانوي", HalaqaId = 3, ParentId = 3, BeginOfMemorize = "الفرقان", MemorizationQuorum = "جزء قد سمع" },
                new Student { StudentId = 5, Name = "منى عبدالله سعيد", BirthDate = new DateTime(2014, 9, 25), PhoneNumber = null, Address = "المكلا", CurrentEducationalLevel = "ابتدائي", EducationalQualification = "ابتدائي", HalaqaId = 4, ParentId = 4, BeginOfMemorize = "الناس", MemorizationQuorum = "جزء عم" },
                new Student { StudentId = 6, Name = "سارة عمر حسن", BirthDate = new DateTime(2012, 6, 30), PhoneNumber = "715555555", Address = "المكلا", CurrentEducationalLevel = "إعدادي", EducationalQualification = "إعدادي", HalaqaId = 5, ParentId = 5, BeginOfMemorize = "ق", MemorizationQuorum = "جزء تبارك" },
                new Student { StudentId = 7, Name = "ريم علي حسين", BirthDate = new DateTime(2009, 1, 5), PhoneNumber = "716666666", Address = "المكلا", CurrentEducationalLevel = "ثانوي", EducationalQualification = "ثانوي", HalaqaId = 6, ParentId = 6, BeginOfMemorize = "الفرقان", MemorizationQuorum = "جزء قد سمع" },
                new Student { StudentId = 8, Name = "آية خالد محمود", BirthDate = new DateTime(2013, 4, 12), PhoneNumber = null, Address = "المكلا", CurrentEducationalLevel = "ابتدائي", EducationalQualification = "ابتدائي", HalaqaId = 7, ParentId = 7, BeginOfMemorize = "الناس", MemorizationQuorum = "جزء عم" },
                new Student { StudentId = 9, Name = "فاطمة سعيد سامي", BirthDate = new DateTime(2010, 7, 18), PhoneNumber = "718888888", Address = "المكلا", CurrentEducationalLevel = "إعدادي", EducationalQualification = "إعدادي", HalaqaId = 8, ParentId = 8, BeginOfMemorize = "ق", MemorizationQuorum = "جزء تبارك" },
                new Student { StudentId = 10, Name = "زينب إبراهيم أنور", BirthDate = new DateTime(2007, 2, 23), PhoneNumber = "719999999", Address = "المكلا", CurrentEducationalLevel = "ثانوي", EducationalQualification = "ثانوي", HalaqaId = 9, ParentId = 9, BeginOfMemorize = "الفرقان", MemorizationQuorum = "جزء قد سمع" },
                new Student { StudentId = 11, Name = "مريم إسماعيل ياسر", BirthDate = new DateTime(2014, 11, 28), PhoneNumber = null, Address = "المكلا", CurrentEducationalLevel = "ابتدائي", EducationalQualification = "ابتدائي", HalaqaId = 10, ParentId = 10, BeginOfMemorize = "الناس", MemorizationQuorum = "جزء عم" }
            );
        }
    }
}
