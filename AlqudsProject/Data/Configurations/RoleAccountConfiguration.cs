using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class RoleAccountConfiguration : IEntityTypeConfiguration<RoleAccount>
    {
        public void Configure(EntityTypeBuilder<RoleAccount> builder)
        {
            builder.ToTable("RoleAccount");

            builder.HasKey(e => e.RoleAccountId);
            builder.Property(e => e.RoleAccountId).HasColumnName("RoleAccountID");

            builder.Property(e => e.AccountId).HasColumnName("AccountID");
            builder.Property(e => e.RoleId).HasColumnName("RoleID");
            builder.Property(e => e.TeacherId).HasColumnName("TeacherID");

            // Seed data
            builder.HasData(
                new RoleAccount { RoleAccountId = 1, AccountId = 1, RoleId = 1, TeacherId = 1 },
                new RoleAccount { RoleAccountId = 2, AccountId = 2, RoleId = 2, TeacherId = 2 },
                new RoleAccount { RoleAccountId = 3, AccountId = 3, RoleId = 2, TeacherId = 3 },
                new RoleAccount { RoleAccountId = 4, AccountId = 4, RoleId = 1, TeacherId = 4 },
                new RoleAccount { RoleAccountId = 5, AccountId = 5, RoleId = 2, TeacherId = 5 },
                new RoleAccount { RoleAccountId = 6, AccountId = 6, RoleId = 2, TeacherId = 6 },
                new RoleAccount { RoleAccountId = 7, AccountId = 7, RoleId = 1, TeacherId = 7 },
                new RoleAccount { RoleAccountId = 8, AccountId = 8, RoleId = 2, TeacherId = 8 },
                new RoleAccount { RoleAccountId = 9, AccountId = 9, RoleId = 2, TeacherId = 9 },
                new RoleAccount { RoleAccountId = 10, AccountId = 10, RoleId = 1, TeacherId = 10 },
                new RoleAccount { RoleAccountId = 11, AccountId = 11, RoleId = 2, TeacherId = 11 },
                new RoleAccount { RoleAccountId = 12, AccountId = 12, RoleId = 2, TeacherId = 12 },
                new RoleAccount { RoleAccountId = 13, AccountId = 13, RoleId = 1, TeacherId = 14 },
                new RoleAccount { RoleAccountId = 14, AccountId = 14, RoleId = 2, TeacherId = 15 }
            );
        }
    }
}

