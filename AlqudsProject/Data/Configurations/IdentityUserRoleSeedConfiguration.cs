using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace AlqudsProject.Data.Configurations
{
    public class IdentityUserRoleSeedConfiguration : IEntityTypeConfiguration<IdentityUserRole<string>>
    {
        public void Configure(EntityTypeBuilder<IdentityUserRole<string>> builder)
        {
            builder.HasData(
                new IdentityUserRole<string>
                {
                    UserId = "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
                    RoleId = "11111111-1111-1111-1111-111111111111"
                }
            );
        }
    }
}
