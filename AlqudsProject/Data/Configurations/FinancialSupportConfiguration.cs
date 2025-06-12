using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class FinancialSupportConfiguration : IEntityTypeConfiguration<FinancialSupport>
    {
        public void Configure(EntityTypeBuilder<FinancialSupport> builder)
        {
            builder.ToTable("FinancialSupport");

            builder.HasKey(e => e.FinancialSupportId);
            builder.Property(e => e.FinancialSupportId).HasColumnName("FinancialSupportID");

            builder.Property(e => e.SupporterName)
                .HasMaxLength(255)
                .IsUnicode(true);

            builder.Property(e => e.Amount)
                .HasColumnType("decimal(10,2)");

            builder.Property(e => e.Date)
                .HasColumnType("date");

            builder.Property(e => e.AcademicYearId)
                .HasColumnName("AcademicYearID");

            builder.Property(e => e.Notes)
                .IsUnicode(true);

            // Seed data
            builder.HasData(
                new FinancialSupport
                {
                    FinancialSupportId = 1,
                    SupporterName = "���� �����",
                    Amount = 100000.00m,
                    Date = new DateTime(2024, 1, 15),
                    AcademicYearId = 1,
                    Notes = "��� ����"
                },
                new FinancialSupport
                {
                    FinancialSupportId = 2,
                    SupporterName = "���� �����",
                    Amount = 500000.00m,
                    Date = new DateTime(2024, 4, 20),
                    AcademicYearId = 1,
                    Notes = "��� �����"
                },
                new FinancialSupport
                {
                    FinancialSupportId = 3,
                    SupporterName = "���� ���",
                    Amount = 50000.00m,
                    Date = new DateTime(2024, 5, 5),
                    AcademicYearId = 1,
                    Notes = "��� ���"
                },
                new FinancialSupport
                {
                    FinancialSupportId = 4,
                    SupporterName = "����� �����",
                    Amount = 600000.00m,
                    Date = new DateTime(2024, 10, 10),
                    AcademicYearId = 1,
                    Notes = "��� �������"
                },
                new FinancialSupport
                {
                    FinancialSupportId = 5,
                    SupporterName = "���� ����",
                    Amount = 20000.00m,
                    Date = new DateTime(2024, 11, 25),
                    AcademicYearId = 1,
                    Notes = "��� ����"
                }
            );
        }
    }
}
