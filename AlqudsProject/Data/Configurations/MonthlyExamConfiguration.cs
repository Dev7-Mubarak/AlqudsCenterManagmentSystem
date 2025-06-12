using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class MonthlyExamConfiguration : IEntityTypeConfiguration<MonthlyExam>
    {
        public void Configure(EntityTypeBuilder<MonthlyExam> builder)
        {
            builder.ToTable("MonthlyExam");

            builder.HasKey(e => e.MonthlyExamId);
            builder.Property(e => e.MonthlyExamId).HasColumnName("MonthlyExamID");
            builder.Property(e => e.StudentId).HasColumnName("StudentID");
            builder.Property(e => e.Date).HasColumnType("date");
            builder.Property(e => e.MemorizeScore);
            builder.Property(e => e.ReviewScore);
            builder.Property(e => e.TotalScore);
            builder.Property(e => e.Notes).HasMaxLength(255);

            builder.HasOne(e => e.Student)
                .WithMany(s => s.MonthlyExams)
                .HasForeignKey(e => e.StudentId);

            // Seed data
            builder.HasData(
                new MonthlyExam
                {
                    MonthlyExamId = 1,
                    StudentId = 3,
                    Date = DateTime.MinValue, // 0001-01-01
                    MemorizeScore = 8,
                    ReviewScore = 8,
                    TotalScore = 16,
                    Notes = null
                }
            );
        }
    }
}
