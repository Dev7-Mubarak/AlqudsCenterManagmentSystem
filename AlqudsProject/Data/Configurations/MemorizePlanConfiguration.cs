using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class MemorizePlanConfiguration : IEntityTypeConfiguration<MemorizePlan>
    {
        public void Configure(EntityTypeBuilder<MemorizePlan> builder)
        {
            builder.ToTable("MemorizePlan");

            builder.HasKey(e => e.MemorizePlanId);
            builder.Property(e => e.MemorizePlanId).HasColumnName("MemorizePlanID");
            builder.Property(e => e.Date).HasColumnType("date");
            builder.Property(e => e.BeginPage);
            builder.Property(e => e.DailyAmount);
            builder.Property(e => e.StudentId).HasColumnName("StudentID");

            builder.HasOne(e => e.Student)
                .WithMany(s => s.MemorizePlans)
                .HasForeignKey(e => e.StudentId);
        }
    }
}
