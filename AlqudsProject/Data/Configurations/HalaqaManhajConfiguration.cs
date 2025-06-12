using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class HalaqaManhajConfiguration : IEntityTypeConfiguration<HalaqaManhaj>
    {
        public void Configure(EntityTypeBuilder<HalaqaManhaj> builder)
        {
            builder.ToTable("HalaqaManhaj");

            builder.HasKey(e => e.HalaqaManhajId);
            builder.Property(e => e.HalaqaManhajId).HasColumnName("HalaqaManhajID");
            builder.Property(e => e.HalaqaId).HasColumnName("HalaqaID");
            builder.Property(e => e.ManhajId).HasColumnName("ManhajID");

        }
    }
}
