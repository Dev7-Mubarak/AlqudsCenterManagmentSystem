using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class FinalExamConfiguration : IEntityTypeConfiguration<FinalExam>
    {
        public void Configure(EntityTypeBuilder<FinalExam> builder)
        {
            builder.ToTable("FinalExam");

            builder.HasKey(e => e.FinalExamId);
            builder.Property(e => e.FinalExamId).HasColumnName("FinalExamID");
            builder.Property(e => e.StudentId).HasColumnName("StudentID");
            builder.Property(e => e.Date).HasColumnType("date");
            builder.Property(e => e.MemorizeScore);
            builder.Property(e => e.ReviewScore);
            builder.Property(e => e.TotalScore);
            builder.Property(e => e.Notes).HasMaxLength(255);

            builder.HasOne(e => e.Student)
                .WithMany(s => s.FinalExams)
                .HasForeignKey(e => e.StudentId);

            // Seed data
            builder.HasData(
                new FinalExam
                {
                    FinalExamId = 1002,
                    StudentId = 3,
                    Date = DateTime.MinValue, // 0001-01-01
                    MemorizeScore = 50,
                    ReviewScore = 50,
                    TotalScore = 100,
                    Notes = "„„ «“"
                },
                new FinalExam
                {
                    FinalExamId = 1003,
                    StudentId = 3,
                    Date = DateTime.MinValue, // 0001-01-01
                    MemorizeScore = 50,
                    ReviewScore = 50,
                    TotalScore = 100,
                    Notes = null
                }
            );
        }
    }
}
