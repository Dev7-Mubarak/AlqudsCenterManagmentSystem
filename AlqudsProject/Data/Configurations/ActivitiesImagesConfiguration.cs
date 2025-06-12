using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace AlqudsProject.Data.Configurations
{
    public class ActivitiesImagesConfiguration : IEntityTypeConfiguration<ActivitiesImage>
    {
        public void Configure(EntityTypeBuilder<ActivitiesImage> builder)
        {
            builder.ToTable("ActivitiesImages");

            builder.HasKey(e => e.ActivityImageId);
            builder.Property(e => e.ActivityImageId).HasColumnName("ActivityImageID");

            builder.Property(e => e.ExpenseId).HasColumnName("ExpenseID");
            builder.Property(e => e.ImageUrl)
                .HasColumnName("ImageURL")
                .HasMaxLength(255)
                .IsUnicode(false);

            builder.Property(e => e.Caption)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.UploadedAt)
                .HasColumnType("date");

            // Seed data
            builder.HasData(
                new ActivitiesImage
                {
                    ActivityImageId = 1,
                    ExpenseId = 1,
                    ImageUrl = "/images/uploads/Resources/img1.jpg",
                    Caption = " œ‘Ì‰ «›  «Õ —Ê÷… „—ﬂ“ «·ﬁœ”",
                    UploadedAt = new DateTime(2025, 1, 15)
                },
                new ActivitiesImage
                {
                    ActivityImageId = 2,
                    ExpenseId = 2,
                    ImageUrl = "/images/uploads/Resources/img2.jpg",
                    Caption = "ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ",
                    UploadedAt = new DateTime(2025, 2, 28)
                },
                new ActivitiesImage
                {
                    ActivityImageId = 3,
                    ExpenseId = 2,
                    ImageUrl = "/images/uploads/Resources/img4.jpg",
                    Caption = "ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ",
                    UploadedAt = new DateTime(2025, 2, 28)
                },
                new ActivitiesImage
                {
                    ActivityImageId = 4,
                    ExpenseId = 2,
                    ImageUrl = "/images/uploads/Resources/img5.jpg",
                    Caption = "ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ",
                    UploadedAt = new DateTime(2025, 2, 28)
                },
                new ActivitiesImage
                {
                    ActivityImageId = 5,
                    ExpenseId = 3,
                    ImageUrl = "/images/uploads/Resources/img3.jpg",
                    Caption = "«·„‘«—ﬂ… ›Ì «·ﬁÌ«œ… «· —»ÊÌ…",
                    UploadedAt = new DateTime(2025, 3, 2)
                }
            );
        }
    }
}
