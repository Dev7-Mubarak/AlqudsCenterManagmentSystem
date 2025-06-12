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
                new MemorizationPath { PathId = 1, MemorizeFrom = "«·‰«”", MemorizeTo = "«·–«—Ì« ", Name = "«·„” ÊÏ «·√Ê·" },
                new MemorizationPath { PathId = 2, MemorizeFrom = "ﬁ", MemorizeTo = "«·‘⁄—«¡", Name = "«·„” ÊÏ «·À«‰Ì" },
                new MemorizationPath { PathId = 3, MemorizeFrom = "«·›—ﬁ«‰", MemorizeTo = "«·—⁄œ", Name = "«·„” ÊÏ «·À«·À" },
                new MemorizationPath { PathId = 4, MemorizeFrom = "ÌÊ”›", MemorizeTo = "«·√‰⁄«„", Name = "«·„” ÊÏ «·—«»⁄" },
                new MemorizationPath { PathId = 5, MemorizeFrom = "«·„«∆œ…", MemorizeTo = "«·›« Õ…", Name = "«·„” ÊÏ «·Œ«„”" }
            );
        }
    }
}
