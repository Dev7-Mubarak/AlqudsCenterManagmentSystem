using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class ActivitiesImageConfiguration : IEntityTypeConfiguration<ActivitiesImage>
    {
        public void Configure(EntityTypeBuilder<ActivitiesImage> builder)
        {
            builder.HasKey(e => e.ActivityImageId);
            builder.Property(e => e.ActivityImageId).HasColumnName("ActivityImageID");

            builder.Property(e => e.Caption).HasMaxLength(200);
            builder.Property(e => e.ExpenseId).HasColumnName("ExpenseID");
            builder.Property(e => e.ImageUrl)
                .HasMaxLength(200)
                .HasColumnName("ImageURL");
            builder.Property(e => e.UploadedAt).HasColumnType("date");

            builder.HasOne(d => d.Expense)
                .WithMany(p => p.ActivitiesImages)
                .HasForeignKey(d => d.ExpenseId)
                .HasConstraintName("FK_ActivitiesImages_Expense");

            //// Seed Arabic data
            //builder.HasData(
            //    new ActivitiesImage
            //    {
            //        ActivityImageId = 1,
            //        Caption = "رحلة علمية لطلاب الحلقات",
            //        ImageUrl = "/images/activities/trip1.jpg",
            //        UploadedAt = DateTime.Now.AddDays(-30),
            //        ExpenseId = 1
            //    }
            //);
        }
    }
}