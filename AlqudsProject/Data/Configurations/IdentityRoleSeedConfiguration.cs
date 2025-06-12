using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace AlqudsProject.Data.Configurations
{
    public class IdentityRoleSeedConfiguration : IEntityTypeConfiguration<IdentityRole>
    {
        public void Configure(EntityTypeBuilder<IdentityRole> builder)
        {
            
            builder.HasData(
                new IdentityRole { Id = "11111111-1111-1111-1111-111111111111", Name = "أداري", NormalizedName = "أداري" },
                new IdentityRole { Id = "22222222-2222-2222-2222-222222222222", Name = "معلم", NormalizedName = "معلم" }
            );
        }
    }   
}
