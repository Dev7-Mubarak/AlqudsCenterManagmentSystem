using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class DailyEvaluationConfiguration : IEntityTypeConfiguration<DailyEvaluation>
    {
        public void Configure(EntityTypeBuilder<DailyEvaluation> builder)
        {
            builder.ToTable("DailyEvaluation");

            builder.HasKey(e => e.DailyEvaluationId);
            builder.Property(e => e.DailyEvaluationId).HasColumnName("DailyEvaluationID");
            builder.Property(e => e.StudentId).HasColumnName("StudentID");
            builder.Property(e => e.Date).HasColumnType("date");
            builder.Property(e => e.AttendanceStatus).HasMaxLength(20);
            builder.Property(e => e.MemorizeScore);
            builder.Property(e => e.ReviewScore);
            builder.Property(e => e.TotalScore);

            builder.HasOne(e => e.Student)
                .WithMany(s => s.DailyEvaluations)
                .HasForeignKey(e => e.StudentId);

         
        }
    }
}
