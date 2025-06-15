using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AlqudsProject.Migrations
{
    public partial class AddAdminUser : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [ProfilePicture]) VALUES (N'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', N'Admin', N'ADMIN', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEIGDPDIcQlCbHHCMK6KQi6O2fGnePcpJKIaOa/KpkxX39V8QvLCe/pPljsnQWb/I2A==', N'6644264d-bc2c-4422-a5c3-c20e48b1ee61', N'bc8841d1-e86f-425b-948d-f97a53318c89', NULL, 0, 0, NULL, 0, 0, N'', N'',null)\r\n");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("delete from [dbo].[AspNetUsers] where id 'c20e48b1ee61'");
        }
    }
}
