using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class PathHalaqaRelationshipConfiguration : IEntityTypeConfiguration<PathHalaqaRelationship>
    {
        public void Configure(EntityTypeBuilder<PathHalaqaRelationship> builder)
        {
            builder.ToTable("Path_Halaqa_Relationship");

            builder.HasKey(e => e.PathHalaqaId);
            builder.Property(e => e.PathHalaqaId).HasColumnName("PathHalaqaID");
            builder.Property(e => e.PathId).HasColumnName("PathID");
            builder.Property(e => e.HalaqaId).HasColumnName("HalaqaID");

        }
    }
}
