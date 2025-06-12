using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class ParentConfiguration : IEntityTypeConfiguration<Parent>
    {
        public void Configure(EntityTypeBuilder<Parent> builder)
        {
            builder.ToTable("Parents");

            builder.HasKey(e => e.ParentId);
            builder.Property(e => e.ParentId).HasColumnName("ParentID");

            builder.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(true);

            builder.Property(e => e.MobileNumber)
                .HasMaxLength(20)
                .IsUnicode(false);

            builder.Property(e => e.PhoneNumber)
                .HasMaxLength(20)
                .IsUnicode(false);

            // Seed data
            builder.HasData(
                new Parent { ParentId = 1, Name = "ÃÍãÏ Úáí ãÍãÏ", MobileNumber = "05311111122", PhoneNumber = "312340" },
                new Parent { ParentId = 2, Name = "ãÍãÏ ÚãÑ ÚÈÏÇááå", MobileNumber = "05322222233", PhoneNumber = "343210" },
                new Parent { ParentId = 3, Name = "íæÓİ ÎÇáÏ íæÓİ", MobileNumber = "05333333344", PhoneNumber = "367890" },
                new Parent { ParentId = 4, Name = "ÚÈÏÇááå ÓÚíÏ ÅÈÑÇåíã", MobileNumber = "05344444455", PhoneNumber = "398760" },
                new Parent { ParentId = 5, Name = "ÚãÑ ÍÓä ÅÓãÇÚíá", MobileNumber = "05355555566", PhoneNumber = "323450" },
                new Parent { ParentId = 6, Name = "Úáí ÍÓíä ÃÍãÏ", MobileNumber = "05366666677", PhoneNumber = "354320" },
                new Parent { ParentId = 7, Name = "ÎÇáÏ ãÍãæÏ ãÍãÏ", MobileNumber = "05377777788", PhoneNumber = "378900" },
                new Parent { ParentId = 8, Name = "ÓÚíÏ ÓÇãí ÚãÑ", MobileNumber = "05388888899", PhoneNumber = "309870" },
                new Parent { ParentId = 9, Name = "ÅÈÑÇåíã ÃäæÑ ÚÈÏÇááå", MobileNumber = "05399999900", PhoneNumber = "334560" },
                new Parent { ParentId = 10, Name = "ÅÓãÇÚíá íÇÓÑ íæÓİ", MobileNumber = "05300000011", PhoneNumber = "365430" },
                new Parent { ParentId = 11, Name = "ÃÈæ áíáì ÎÇáÏ ÅÈÑÇåíã", MobileNumber = "05311111222", PhoneNumber = "312350" },
                new Parent { ParentId = 12, Name = "ÃÈæ äæÑ ÓÚíÏ ÅÓãÇÚíá", MobileNumber = "05322222333", PhoneNumber = "343220" },
                new Parent { ParentId = 13, Name = "ÃÈæ åÏì ÍÓä ÃÍãÏ", MobileNumber = "05333333444", PhoneNumber = "367900" },
                new Parent { ParentId = 14, Name = "ÃÈæ ãäì ÍÓíä ãÍãÏ", MobileNumber = "05344444555", PhoneNumber = "398770" },
                new Parent { ParentId = 15, Name = "ÃÈæ ÓÇÑÉ ãÍãæÏ ÚãÑ", MobileNumber = "05355555666", PhoneNumber = "323460" },
                new Parent { ParentId = 16, Name = "ÃÈæ Ñíã ÓÇãí ÚÈÏÇááå", MobileNumber = "05366666777", PhoneNumber = "354330" },
                new Parent { ParentId = 17, Name = "ÃÈæ ÂíÉ ÃäæÑ íæÓİ", MobileNumber = "05377777888", PhoneNumber = "378910" },
                new Parent { ParentId = 18, Name = "ÃÈæ İÇØãÉ íÇÓÑ ÅÈÑÇåíã", MobileNumber = "05388888999", PhoneNumber = "309880" },
                new Parent { ParentId = 19, Name = "ÃÈæ ÒíäÈ ßÑíã ÅÓãÇÚíá", MobileNumber = "05399999000", PhoneNumber = "334570" },
                new Parent { ParentId = 20, Name = "ÃÈæ ãÑíã äÈíá ÃÍãÏ", MobileNumber = "05300000111", PhoneNumber = "365440" },
                new Parent { ParentId = 1002, Name = "ãÌÏí ÓÇáã ãÑÚí", MobileNumber = "706667889", PhoneNumber = "420181" },
                new Parent { ParentId = 1003, Name = "ãÌÏí ÓÇáã ãÑÚí", MobileNumber = "714736068", PhoneNumber = "320181" }
            );
        }
    }
   
}
