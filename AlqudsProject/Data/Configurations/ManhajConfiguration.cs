using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class ManhajConfiguration : IEntityTypeConfiguration<Manhaj>
    {
        public void Configure(EntityTypeBuilder<Manhaj> builder)
        {
            builder.ToTable("Manhaj");

            builder.HasKey(e => e.ManhajId);
            builder.Property(e => e.ManhajId).HasColumnName("ManhajID");

            builder.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.Url)
                .HasColumnName("URL")
                .HasMaxLength(255)
                .IsUnicode(false);

            builder.Property(e => e.Picture)
                .HasMaxLength(255)
                .IsUnicode(false);

            // Seed data
            builder.HasData(
                new Manhaj { ManhajId = 1, Name = "„‰ÂÃ «· ÃÊÌœ", Url = "www.example.com/tajweed", Picture = @"C:\Users\User\Pictures\tajweed.jpg" },
                new Manhaj { ManhajId = 2, Name = " Õ›… «·√ÿ›«·", Url = "www.example.com/tohfat-alatfal", Picture = @"C:\Users\User\Pictures\tohfat-alatfal.jpg" },
                new Manhaj { ManhajId = 3, Name = "«·Ã“—Ì…", Url = "www.example.com/jazariya", Picture = @"C:\Users\User\Pictures\jazariya.jpg" },
                new Manhaj { ManhajId = 4, Name = "«·√—»⁄Ê‰ «·‰ÊÊÌ…", Url = "www.example.com/arbaoon-nawawi", Picture = @"C:\Users\User\Pictures\arbaoon-nawawi.jpg" },
                new Manhaj { ManhajId = 5, Name = "—Ì«÷ «·’«·ÕÌ‰", Url = "www.example.com/riyad-al-salihin", Picture = @"C:\Users\User\Pictures\riyad-al-salihin.jpg" }
            );
        }
    }
}
