using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class TeacherAttendanceConfiguration : IEntityTypeConfiguration<TeacherAttendance>
    {
        public void Configure(EntityTypeBuilder<TeacherAttendance> builder)
        {
            builder.ToTable("TeacherAttendance");

            builder.HasKey(e => e.TeacherAttendanceId);
            builder.Property(e => e.TeacherAttendanceId).HasColumnName("TeacherAttendanceID");

            builder.Property(e => e.TeacherId).HasColumnName("TeacherID");
            builder.Property(e => e.Date).HasColumnType("date");
            builder.Property(e => e.Status)
                .HasMaxLength(20)
                .IsUnicode(true);
            builder.Property(e => e.RecordedBy).HasColumnName("RecordedBy");
        }
    }
}
