using AlqudsProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AlqudsProject.Data.Configurations
{
    public class AccountConfiguration : IEntityTypeConfiguration<Account>
    {
        public void Configure(EntityTypeBuilder<Account> builder)
        {
            builder.ToTable("Account");

            builder.HasKey(e => e.AccountId);
            builder.Property(e => e.AccountId).HasColumnName("AccountID");

            builder.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);

            builder.Property(e => e.FullName)
                .HasMaxLength(100)
                .IsUnicode(false);

            builder.Property(e => e.PasswordHash)
                .HasMaxLength(255)
                .IsUnicode(false);

            builder.Property(e => e.Phone)
                .HasMaxLength(15)
                .IsUnicode(false);

            builder.Property(e => e.Username)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.HasIndex(e => e.Username).IsUnique();
            builder.HasIndex(e => e.Phone).IsUnique();
            builder.HasIndex(e => e.Email).IsUnique();

            // Seed Arabic data
            builder.HasData(
                new Account
                {
                    AccountId = 1,
                    Username = "admin1",
                    PasswordHash = "pass123",
                    FullName = "فاطمة علي محمد",
                    Email = "fatima.ali@example.com",
                    Phone = "771234567"
                },
                new Account
                {
                    AccountId = 2,
                    Username = "teacher1",
                    PasswordHash = "pass456",
                    FullName = "خديجة عمر عبدالله",
                    Email = "khadija.omar@example.com",
                    Phone = "772345678"
                },
                new Account
                {
                    AccountId = 3,
                    Username = "teacher2",
                    PasswordHash = "pass789",
                    FullName = "عائشة خالد يوسف",
                    Email = "aisha.khalid@example.com",
                    Phone = "773456789"
                },
                new Account
                {
                    AccountId = 4,
                    Username = "admin2",
                    PasswordHash = "pass101",
                    FullName = "رقية سعيد إبراهيم",
                    Email = "ruqaya.saeed@example.com",
                    Phone = "774567890"
                },
                new Account
                {
                    AccountId = 5,
                    Username = "teacher3",
                    PasswordHash = "pass112",
                    FullName = "مريم حسن إسماعيل",
                    Email = "maryam.hassan@example.com",
                    Phone = "775678901"
                },
                new Account
                {
                    AccountId = 6,
                    Username = "teacher4",
                    PasswordHash = "pass131",
                    FullName = "أسماء حسين أحمد",
                    Email = "asmaa.hussein@example.com",
                    Phone = "776789012"
                },
                new Account
                {
                    AccountId = 7,
                    Username = "admin3",
                    PasswordHash = "pass141",
                    FullName = "زينب محمود محمد",
                    Email = "zainab.mahmoud@example.com",
                    Phone = "777890123"
                },
                new Account
                {
                    AccountId = 8,
                    Username = "teacher5",
                    PasswordHash = "pass151",
                    FullName = "حفصة سامي عمر",
                    Email = "hafsa.sami@example.com",
                    Phone = "778901234"
                },
                new Account
                {
                    AccountId = 9,
                    Username = "teacher6",
                    PasswordHash = "pass161",
                    FullName = "سمية أنور عبدالله",
                    Email = "sumaya.anwar@example.com",
                    Phone = "779012345"
                },
                new Account
                {
                    AccountId = 10,
                    Username = "admin4",
                    PasswordHash = "pass171",
                    FullName = "أم كلثوم ياسر يوسف",
                    Email = "omkulthum.yasser@example.com",
                    Phone = "770123456"
                },
                new Account
                {
                    AccountId = 11,
                    Username = "teacher7",
                    PasswordHash = "pass181",
                    FullName = "جويرية كريم إبراهيم",
                    Email = "juwayriya.karim@example.com",
                    Phone = "771234568"
                },
                new Account
                {
                    AccountId = 12,
                    Username = "teacher8",
                    PasswordHash = "pass191",
                    FullName = "صفية نبيل إسماعيل",
                    Email = "safiya.nabil@example.com",
                    Phone = "772345679"
                },
                new Account
                {
                    AccountId = 13,
                    Username = "teacher9",
                    PasswordHash = "pass212",
                    FullName = "هند أمجد محمد",
                    Email = "hind.amjad@example.com",
                    Phone = "774567891"
                },
                new Account
                {
                    AccountId = 14,
                    Username = "teacher10",
                    PasswordHash = "pass222",
                    FullName = "ثويبة بهاء عمر",
                    Email = "thuwayba.baha@example.com",
                    Phone = "775678902"
                },
                new Account
                {
                    AccountId = 15,
                    Username = "teacher11",
                    PasswordHash = "pass242",
                    FullName = "نائلة شوقي يوسف",
                    Email = "naila.shawqi@example.com",
                    Phone = "777890124"
                },
                new Account
                {
                    AccountId = 16,
                    Username = "teacher12",
                    PasswordHash = "pass252",
                    FullName = "ليلى رشيد إبراهيم",
                    Email = "layla.rashid@example.com",
                    Phone = "778901235"
                },
                new Account
                {
                    AccountId = 17,
                    Username = "teacher13",
                    PasswordHash = "pass272",
                    FullName = "رملة فؤاد أحمد",
                    Email = "ramla.fuad@example.com",
                    Phone = "770123457"
                },
                new Account
                {
                    AccountId = 18,
                    Username = "teacher14",
                    PasswordHash = "pass282",
                    FullName = "سعاد جمال محمد",
                    Email = "suad.jamal@example.com",
                    Phone = "771234569"
                },
                new Account
                {
                    AccountId = 19,
                    Username = "teacher15",
                    PasswordHash = "pass303",
                    FullName = "إيمان نادر عبدالله",
                    Email = "iman.nader@example.com",
                    Phone = "773456781"
                }
            );
        }
    }
}