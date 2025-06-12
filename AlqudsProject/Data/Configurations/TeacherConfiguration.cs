using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class TeacherConfiguration : IEntityTypeConfiguration<Teacher>
    {
        public void Configure(EntityTypeBuilder<Teacher> builder)
        {
            builder.ToTable("Teacher");

            builder.HasKey(e => e.TeacherId);
            builder.Property(e => e.TeacherId).HasColumnName("TeacherID");

            builder.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.BirthDate)
                .HasColumnType("date");

            builder.Property(e => e.PhoneNumber)
                .HasMaxLength(15)
                .IsUnicode(false);

            builder.Property(e => e.Address)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.Job)
                .HasMaxLength(50)
                .IsUnicode(true);

            builder.Property(e => e.PassportNumber)
                .HasMaxLength(20)
                .IsUnicode(false);


            builder.Property(e => e.EducationalQualification)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.Experience)
                .HasMaxLength(50)
                .IsUnicode(true);

            builder.Property(e => e.Courses)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.MaritalStatus)
                .HasMaxLength(20)
                .IsUnicode(true);

            builder.Property(e => e.IsAdministrator);

            builder.Property(e => e.IsMojaz);

            builder.Property(e => e.AmountOfMemorization)
                .HasMaxLength(20)
                .IsUnicode(true);

            // Seed data
            builder.HasData(
                new Teacher { TeacherId = 1, Name = "����� ��� ����", BirthDate = new DateTime(1980, 5, 15), PhoneNumber = "772345678", Address = "������", Job = "����� ����", PassportNumber = "P123456", Idnumber = "43545645",EducationalQualification = "��������� ������ �������", Experience = "10 �����", Courses = "����� �����", MaritalStatus = "������", IsAdministrator = false, IsMojaz = true, AmountOfMemorization = "30 ���" },
                new Teacher { TeacherId = 2, Name = "����� ��� �������", BirthDate = new DateTime(1985, 8, 20), PhoneNumber = "773456789", Address = "������", Job = "����� ����", PassportNumber = "P654321", Idnumber = "43545645", EducationalQualification = "����� ������ �������", Experience = "5 �����", Courses = "����� �����", MaritalStatus = "�����", IsAdministrator = false, IsMojaz = false, AmountOfMemorization = "15 ���" },
                new Teacher { TeacherId = 3, Name = "����� ���� ����", BirthDate = new DateTime(1990, 3, 10), PhoneNumber = "775678901", Address = "������", Job = "����� ����", PassportNumber = "P789012", Idnumber = "43545645", EducationalQualification = "��������� ��� �����", Experience = "3 �����", Courses = "����� �����", MaritalStatus = "������", IsAdministrator = false, IsMojaz = true, AmountOfMemorization = "20 ���" }
            );
        }
    }
}
