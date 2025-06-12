using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class MemorizationPathConfiguration : IEntityTypeConfiguration<MemorizationPath>
    {
        public void Configure(EntityTypeBuilder<MemorizationPath> builder)
        {
            builder.ToTable("MemorizationPath");

            builder.HasKey(e => e.PathId);
            builder.Property(e => e.PathId).HasColumnName("PathID");

            builder.Property(e => e.MemorizeFrom)
                .HasMaxLength(50)
                .IsUnicode(true);

            builder.Property(e => e.MemorizeTo)
                .HasMaxLength(50)
                .IsUnicode(true);

            builder.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(true);

            // Seed data
            builder.HasData(
                new MemorizationPath { PathId = 1, MemorizeFrom = "�����", MemorizeTo = "��������", Name = "������� �����" },
                new MemorizationPath { PathId = 2, MemorizeFrom = "�", MemorizeTo = "�������", Name = "������� ������" },
                new MemorizationPath { PathId = 3, MemorizeFrom = "�������", MemorizeTo = "�����", Name = "������� ������" },
                new MemorizationPath { PathId = 4, MemorizeFrom = "����", MemorizeTo = "�������", Name = "������� ������" },
                new MemorizationPath { PathId = 5, MemorizeFrom = "�������", MemorizeTo = "�������", Name = "������� ������" }
            );
        }
    }
}
