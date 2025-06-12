using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AlqudsProject.Migrations
{
    public partial class intialcreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AcademicYear",
                columns: table => new
                {
                    AcademicYearID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AcademicYear = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    DateOfBeginYear = table.Column<DateTime>(type: "date", nullable: true),
                    DateOfEndYear = table.Column<DateTime>(type: "date", nullable: true),
                    IsActive = table.Column<bool>(type: "bit", nullable: true),
                    StudentRegistrationSuspensionDate = table.Column<DateTime>(type: "date", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AcademicYear", x => x.AcademicYearID);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoles",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUsers",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    UserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedUserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedEmail = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    EmailConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    PasswordHash = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SecurityStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumberConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    TwoFactorEnabled = table.Column<bool>(type: "bit", nullable: false),
                    LockoutEnd = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: true),
                    LockoutEnabled = table.Column<bool>(type: "bit", nullable: false),
                    AccessFailedCount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUsers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Manhaj",
                columns: table => new
                {
                    ManhajID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    URL = table.Column<string>(type: "varchar(255)", unicode: false, maxLength: 255, nullable: true),
                    Picture = table.Column<string>(type: "varchar(255)", unicode: false, maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Manhaj", x => x.ManhajID);
                });

            migrationBuilder.CreateTable(
                name: "MemorizationPath",
                columns: table => new
                {
                    PathID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MemorizeFrom = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    MemorizeTo = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MemorizationPath", x => x.PathID);
                });

            migrationBuilder.CreateTable(
                name: "Parents",
                columns: table => new
                {
                    ParentID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    MobileNumber = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true),
                    PhoneNumber = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Parents", x => x.ParentID);
                });

            migrationBuilder.CreateTable(
                name: "Teacher",
                columns: table => new
                {
                    TeacherID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    BirthDate = table.Column<DateTime>(type: "date", nullable: true),
                    PhoneNumber = table.Column<string>(type: "varchar(15)", unicode: false, maxLength: 15, nullable: false),
                    Address = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Job = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    PassportNumber = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true),
                    Idnumber = table.Column<string>(type: "nvarchar(11)", maxLength: 11, nullable: false),
                    EducationalQualification = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Experience = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Courses = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    MaritalStatus = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    IsAdministrator = table.Column<bool>(type: "bit", nullable: false),
                    IsMojaz = table.Column<bool>(type: "bit", nullable: false),
                    AmountOfMemorization = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Teacher", x => x.TeacherID);
                });

            migrationBuilder.CreateTable(
                name: "FinancialSummaries",
                columns: table => new
                {
                    FinancialSummaryId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AcademicYearId = table.Column<int>(type: "int", nullable: true),
                    TotalSupport = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    TotalExpenses = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    Balance = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FinancialSummaries", x => x.FinancialSummaryId);
                    table.ForeignKey(
                        name: "FK_FinancialSummaries_AcademicYear_AcademicYearId",
                        column: x => x.AcademicYearId,
                        principalTable: "AcademicYear",
                        principalColumn: "AcademicYearID");
                });

            migrationBuilder.CreateTable(
                name: "FinancialSupport",
                columns: table => new
                {
                    FinancialSupportID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SupporterName = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    Amount = table.Column<decimal>(type: "decimal(10,2)", nullable: false),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    AcademicYearID = table.Column<int>(type: "int", nullable: true),
                    Notes = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FinancialSupport", x => x.FinancialSupportID);
                    table.ForeignKey(
                        name: "FK_FinancialSupport_AcademicYear_AcademicYearID",
                        column: x => x.AcademicYearID,
                        principalTable: "AcademicYear",
                        principalColumn: "AcademicYearID");
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoleClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoleClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetRoleClaims_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUserClaims_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserLogins",
                columns: table => new
                {
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderKey = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderDisplayName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserLogins", x => new { x.LoginProvider, x.ProviderKey });
                    table.ForeignKey(
                        name: "FK_AspNetUserLogins_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserRoles",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserTokens",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Value = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserTokens", x => new { x.UserId, x.LoginProvider, x.Name });
                    table.ForeignKey(
                        name: "FK_AspNetUserTokens_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CenterAnnualReports",
                columns: table => new
                {
                    CenterAnnualReportId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AcademicYearId = table.Column<int>(type: "int", nullable: true),
                    TotalStudents = table.Column<int>(type: "int", nullable: true),
                    NewStudents = table.Column<int>(type: "int", nullable: true),
                    GraduatedStudents = table.Column<int>(type: "int", nullable: true),
                    TotalTeachers = table.Column<int>(type: "int", nullable: true),
                    TotalHalaqat = table.Column<int>(type: "int", nullable: true),
                    EventsCount = table.Column<int>(type: "int", nullable: true),
                    Achievements = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Challenges = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Recommendations = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<int>(type: "int", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CreatedByNavigationId = table.Column<string>(type: "nvarchar(450)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CenterAnnualReports", x => x.CenterAnnualReportId);
                    table.ForeignKey(
                        name: "FK_CenterAnnualReports_AcademicYear_AcademicYearId",
                        column: x => x.AcademicYearId,
                        principalTable: "AcademicYear",
                        principalColumn: "AcademicYearID");
                    table.ForeignKey(
                        name: "FK_CenterAnnualReports_AspNetUsers_CreatedByNavigationId",
                        column: x => x.CreatedByNavigationId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Expenses",
                columns: table => new
                {
                    ExpenseID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    Amount = table.Column<decimal>(type: "decimal(10,2)", nullable: false),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    AcademicYearID = table.Column<int>(type: "int", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IsActivity = table.Column<bool>(type: "bit", nullable: true),
                    Notes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PaidBy = table.Column<int>(type: "int", nullable: true),
                    PaidByNavigationId = table.Column<string>(type: "nvarchar(450)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Expenses", x => x.ExpenseID);
                    table.ForeignKey(
                        name: "FK_Expenses_AcademicYear_AcademicYearID",
                        column: x => x.AcademicYearID,
                        principalTable: "AcademicYear",
                        principalColumn: "AcademicYearID");
                    table.ForeignKey(
                        name: "FK_Expenses_AspNetUsers_PaidByNavigationId",
                        column: x => x.PaidByNavigationId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Halaqa",
                columns: table => new
                {
                    HalaqaID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Period = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    TeacherID = table.Column<int>(type: "int", nullable: true),
                    AcademicYearID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Halaqa", x => x.HalaqaID);
                    table.ForeignKey(
                        name: "FK_Halaqa_AcademicYear_AcademicYearID",
                        column: x => x.AcademicYearID,
                        principalTable: "AcademicYear",
                        principalColumn: "AcademicYearID");
                    table.ForeignKey(
                        name: "FK_Halaqa_Teacher_TeacherID",
                        column: x => x.TeacherID,
                        principalTable: "Teacher",
                        principalColumn: "TeacherID");
                });

            migrationBuilder.CreateTable(
                name: "TeacherAttendance",
                columns: table => new
                {
                    TeacherAttendanceID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TeacherID = table.Column<int>(type: "int", nullable: true),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    Status = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    RecordedBy = table.Column<int>(type: "int", nullable: true),
                    RecordedByNavigationId = table.Column<string>(type: "nvarchar(450)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TeacherAttendance", x => x.TeacherAttendanceID);
                    table.ForeignKey(
                        name: "FK_TeacherAttendance_AspNetUsers_RecordedByNavigationId",
                        column: x => x.RecordedByNavigationId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_TeacherAttendance_Teacher_TeacherID",
                        column: x => x.TeacherID,
                        principalTable: "Teacher",
                        principalColumn: "TeacherID");
                });

            migrationBuilder.CreateTable(
                name: "ActivitiesImages",
                columns: table => new
                {
                    ActivityImageID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ExpenseID = table.Column<int>(type: "int", nullable: false),
                    ImageURL = table.Column<string>(type: "varchar(255)", unicode: false, maxLength: 255, nullable: false),
                    Caption = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    UploadedAt = table.Column<DateTime>(type: "date", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ActivitiesImages", x => x.ActivityImageID);
                    table.ForeignKey(
                        name: "FK_ActivitiesImages_Expense",
                        column: x => x.ExpenseID,
                        principalTable: "Expenses",
                        principalColumn: "ExpenseID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "HalaqaManhaj",
                columns: table => new
                {
                    HalaqaManhajID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HalaqaID = table.Column<int>(type: "int", nullable: true),
                    ManhajID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_HalaqaManhaj", x => x.HalaqaManhajID);
                    table.ForeignKey(
                        name: "FK_HalaqaManhaj_Halaqa_HalaqaID",
                        column: x => x.HalaqaID,
                        principalTable: "Halaqa",
                        principalColumn: "HalaqaID");
                    table.ForeignKey(
                        name: "FK_HalaqaManhaj_Manhaj_ManhajID",
                        column: x => x.ManhajID,
                        principalTable: "Manhaj",
                        principalColumn: "ManhajID");
                });

            migrationBuilder.CreateTable(
                name: "Path_Halaqa_Relationship",
                columns: table => new
                {
                    PathHalaqaID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PathID = table.Column<int>(type: "int", nullable: false),
                    HalaqaID = table.Column<int>(type: "int", nullable: false),
                    MemorizationPathPathId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Path_Halaqa_Relationship", x => x.PathHalaqaID);
                    table.ForeignKey(
                        name: "FK_Path_Halaqa_Relationship_Halaqa_HalaqaID",
                        column: x => x.HalaqaID,
                        principalTable: "Halaqa",
                        principalColumn: "HalaqaID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Path_Halaqa_Relationship_MemorizationPath_MemorizationPathPathId",
                        column: x => x.MemorizationPathPathId,
                        principalTable: "MemorizationPath",
                        principalColumn: "PathID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Student",
                columns: table => new
                {
                    StudentID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    BirthDate = table.Column<DateTime>(type: "date", nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true),
                    Address = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: true),
                    CurrentEducationalLevel = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    EducationalQualification = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    HalaqaID = table.Column<int>(type: "int", nullable: false),
                    ParentID = table.Column<int>(type: "int", nullable: true),
                    BeginOfMemorize = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    MemorizationQuorum = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student", x => x.StudentID);
                    table.ForeignKey(
                        name: "FK__Student__HalaqaI__73BA3083",
                        column: x => x.HalaqaID,
                        principalTable: "Halaqa",
                        principalColumn: "HalaqaID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK__Student__ParentI__74AE54BC",
                        column: x => x.ParentID,
                        principalTable: "Parents",
                        principalColumn: "ParentID",
                        onDelete: ReferentialAction.SetNull);
                });

            migrationBuilder.CreateTable(
                name: "AnnualReports",
                columns: table => new
                {
                    AnnualReportId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MemorizeFrom = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MemorizeTo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReviewFrom = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReviewTo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MemorizeAndReviewDegree = table.Column<int>(type: "int", nullable: true),
                    StudentId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnnualReports", x => x.AnnualReportId);
                    table.ForeignKey(
                        name: "FK_AnnualReports_Student_StudentId",
                        column: x => x.StudentId,
                        principalTable: "Student",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "DailyEvaluation",
                columns: table => new
                {
                    DailyEvaluationID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StudentID = table.Column<int>(type: "int", nullable: false),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    AttendanceStatus = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    MemorizeScore = table.Column<double>(type: "float", nullable: true),
                    ReviewScore = table.Column<double>(type: "float", nullable: true),
                    TotalScore = table.Column<double>(type: "float", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DailyEvaluation", x => x.DailyEvaluationID);
                    table.ForeignKey(
                        name: "FK_DailyEvaluation_Student_StudentID",
                        column: x => x.StudentID,
                        principalTable: "Student",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "FinalExam",
                columns: table => new
                {
                    FinalExamID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StudentID = table.Column<int>(type: "int", nullable: false),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    MemorizeScore = table.Column<double>(type: "float", nullable: true),
                    ReviewScore = table.Column<double>(type: "float", nullable: true),
                    TotalScore = table.Column<double>(type: "float", nullable: true),
                    Notes = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FinalExam", x => x.FinalExamID);
                    table.ForeignKey(
                        name: "FK_FinalExam_Student_StudentID",
                        column: x => x.StudentID,
                        principalTable: "Student",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "MemorizePlan",
                columns: table => new
                {
                    MemorizePlanID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Date = table.Column<DateTime>(type: "date", nullable: true),
                    BeginPage = table.Column<int>(type: "int", nullable: true),
                    DailyAmount = table.Column<double>(type: "float", nullable: true),
                    StudentID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MemorizePlan", x => x.MemorizePlanID);
                    table.ForeignKey(
                        name: "FK_MemorizePlan_Student_StudentID",
                        column: x => x.StudentID,
                        principalTable: "Student",
                        principalColumn: "StudentID");
                });

            migrationBuilder.CreateTable(
                name: "MonthlyExam",
                columns: table => new
                {
                    MonthlyExamID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StudentID = table.Column<int>(type: "int", nullable: false),
                    Date = table.Column<DateTime>(type: "date", nullable: false),
                    MemorizeScore = table.Column<double>(type: "float", nullable: true),
                    ReviewScore = table.Column<double>(type: "float", nullable: true),
                    TotalScore = table.Column<double>(type: "float", nullable: true),
                    Notes = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MonthlyExam", x => x.MonthlyExamID);
                    table.ForeignKey(
                        name: "FK_MonthlyExam_Student_StudentID",
                        column: x => x.StudentID,
                        principalTable: "Student",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ReviewPlans",
                columns: table => new
                {
                    ReviewPlanId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Date = table.Column<DateTime>(type: "datetime2", nullable: true),
                    BeginningOfMemorizing = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AmountOfDelayMemorization = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    StudentId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ReviewPlans", x => x.ReviewPlanId);
                    table.ForeignKey(
                        name: "FK_ReviewPlans_Student_StudentId",
                        column: x => x.StudentId,
                        principalTable: "Student",
                        principalColumn: "StudentID");
                });

            migrationBuilder.CreateTable(
                name: "TermReports",
                columns: table => new
                {
                    TermReportId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Term = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MonthlyResult = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TermResult = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TotalResult = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Notes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    StudentId = table.Column<int>(type: "int", nullable: false),
                    MemorizeFrom = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MemorizeTo = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReviewFrom = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReviewTo = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MemorizeDegree = table.Column<double>(type: "float", nullable: false),
                    ReviewDegree = table.Column<double>(type: "float", nullable: false),
                    TotalDegree = table.Column<double>(type: "float", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TermReports", x => x.TermReportId);
                    table.ForeignKey(
                        name: "FK_TermReports_Student_StudentId",
                        column: x => x.StudentId,
                        principalTable: "Student",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "DailyMemorizePlans",
                columns: table => new
                {
                    DailyMemorizePlanId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Date = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Day = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Surah = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Amount = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MemorizePlanId = table.Column<int>(type: "int", nullable: true),
                    FromPage = table.Column<int>(type: "int", nullable: true),
                    ToPage = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DailyMemorizePlans", x => x.DailyMemorizePlanId);
                    table.ForeignKey(
                        name: "FK_DailyMemorizePlans_MemorizePlan_MemorizePlanId",
                        column: x => x.MemorizePlanId,
                        principalTable: "MemorizePlan",
                        principalColumn: "MemorizePlanID");
                });

            migrationBuilder.CreateTable(
                name: "DailyReviewPlans",
                columns: table => new
                {
                    DailyReviewPlanId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Date = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Surah = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Amount = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReviewPlanId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DailyReviewPlans", x => x.DailyReviewPlanId);
                    table.ForeignKey(
                        name: "FK_DailyReviewPlans_ReviewPlans_ReviewPlanId",
                        column: x => x.ReviewPlanId,
                        principalTable: "ReviewPlans",
                        principalColumn: "ReviewPlanId");
                });

            migrationBuilder.InsertData(
                table: "AcademicYear",
                columns: new[] { "AcademicYearID", "AcademicYear", "DateOfBeginYear", "DateOfEndYear", "IsActive", "StudentRegistrationSuspensionDate" },
                values: new object[,]
                {
                    { 1, "2023-2024", new DateTime(2023, 9, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2024, 6, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2023, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 2, "2024-2025", new DateTime(2024, 9, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2025, 6, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2024, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "Manhaj",
                columns: new[] { "ManhajID", "Name", "Picture", "URL" },
                values: new object[,]
                {
                    { 1, "منهج التجويد", "C:\\Users\\User\\Pictures\\tajweed.jpg", "www.example.com/tajweed" },
                    { 2, "تحفة الأطفال", "C:\\Users\\User\\Pictures\\tohfat-alatfal.jpg", "www.example.com/tohfat-alatfal" },
                    { 3, "الجزرية", "C:\\Users\\User\\Pictures\\jazariya.jpg", "www.example.com/jazariya" },
                    { 4, "الأربعون النووية", "C:\\Users\\User\\Pictures\\arbaoon-nawawi.jpg", "www.example.com/arbaoon-nawawi" },
                    { 5, "رياض الصالحين", "C:\\Users\\User\\Pictures\\riyad-al-salihin.jpg", "www.example.com/riyad-al-salihin" }
                });

            migrationBuilder.InsertData(
                table: "MemorizationPath",
                columns: new[] { "PathID", "MemorizeFrom", "MemorizeTo", "Name" },
                values: new object[,]
                {
                    { 1, "الناس", "الذاريات", "المستوى الأول" },
                    { 2, "ق", "الشعراء", "المستوى الثاني" },
                    { 3, "الفرقان", "الرعد", "المستوى الثالث" },
                    { 4, "يوسف", "الأنعام", "المستوى الرابع" },
                    { 5, "المائدة", "الفاتحة", "المستوى الخامس" }
                });

            migrationBuilder.InsertData(
                table: "Parents",
                columns: new[] { "ParentID", "MobileNumber", "Name", "PhoneNumber" },
                values: new object[,]
                {
                    { 1, "05311111122", "أحمد علي محمد", "312340" },
                    { 2, "05322222233", "محمد عمر عبدالله", "343210" },
                    { 3, "05333333344", "يوسف خالد يوسف", "367890" },
                    { 4, "05344444455", "عبدالله سعيد إبراهيم", "398760" },
                    { 5, "05355555566", "عمر حسن إسماعيل", "323450" },
                    { 6, "05366666677", "علي حسين أحمد", "354320" },
                    { 7, "05377777788", "خالد محمود محمد", "378900" },
                    { 8, "05388888899", "سعيد سامي عمر", "309870" },
                    { 9, "05399999900", "إبراهيم أنور عبدالله", "334560" },
                    { 10, "05300000011", "إسماعيل ياسر يوسف", "365430" },
                    { 11, "05311111222", "أبو ليلى خالد إبراهيم", "312350" },
                    { 12, "05322222333", "أبو نور سعيد إسماعيل", "343220" },
                    { 13, "05333333444", "أبو هدى حسن أحمد", "367900" },
                    { 14, "05344444555", "أبو منى حسين محمد", "398770" },
                    { 15, "05355555666", "أبو سارة محمود عمر", "323460" },
                    { 16, "05366666777", "أبو ريم سامي عبدالله", "354330" },
                    { 17, "05377777888", "أبو آية أنور يوسف", "378910" },
                    { 18, "05388888999", "أبو فاطمة ياسر إبراهيم", "309880" },
                    { 19, "05399999000", "أبو زينب كريم إسماعيل", "334570" },
                    { 20, "05300000111", "أبو مريم نبيل أحمد", "365440" },
                    { 1002, "706667889", "مجدي سالم مرعي", "420181" },
                    { 1003, "714736068", "مجدي سالم مرعي", "320181" }
                });

            migrationBuilder.InsertData(
                table: "Teacher",
                columns: new[] { "TeacherID", "Address", "AmountOfMemorization", "BirthDate", "Courses", "EducationalQualification", "Experience", "Idnumber", "IsAdministrator", "IsMojaz", "Job", "MaritalStatus", "Name", "PassportNumber", "PhoneNumber" },
                values: new object[,]
                {
                    { 1, "المكلا", "30 جزء", new DateTime(1980, 5, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), "دورات تجويد", "بكالوريوس دراسات إسلامية", "10 سنوات", "43545645", false, true, "معلمة قرآن", "متزوجة", "فاطمة علي محمد", "P123456", "772345678" },
                    { 2, "المكلا", "15 جزء", new DateTime(1985, 8, 20, 0, 0, 0, 0, DateTimeKind.Unspecified), "دورات تجويد", "دبلوم دراسات إسلامية", "5 سنوات", "43545645", false, false, "معلمة قرآن", "عزباء", "خديجة عمر عبدالله", "P654321", "773456789" },
                    { 3, "المكلا", "20 جزء", new DateTime(1990, 3, 10, 0, 0, 0, 0, DateTimeKind.Unspecified), "دورات تجويد", "بكالوريوس لغة عربية", "3 سنوات", "43545645", false, true, "معلمة قرآن", "متزوجة", "عائشة خالد يوسف", "P789012", "775678901" }
                });

            migrationBuilder.InsertData(
                table: "Expenses",
                columns: new[] { "ExpenseID", "AcademicYearID", "Amount", "Date", "Description", "IsActivity", "Notes", "PaidBy", "PaidByNavigationId", "Title" },
                values: new object[,]
                {
                    { 1, 1, 30000.00m, new DateTime(2025, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), "\r\nفي ظل سعي مركز القدس لتحفيظ القرآن الكريم لتوسيع خدماته التعليمية وتلبية احتياجات المجتمع المحلي، تم بحمد الله وتوفيقه تدشين \"روضة مركز القدس\"، في حفل بهيج أقيم في مقر المركز، بحضور عدد من القيادات التربوية وأمهات الطالبات ومعلمات المركز.", true, "وقد استُهل الحفل بآيات من الذكر الحكيم، ثم تلتها كلمة ترحيبية من إدارة المركز، أشادت خلالها بأهمية مرحلة الطفولة المبكرة في بناء الشخصية وتنمية القيم، مؤكدة أن افتتاح الروضة يُعد خطوة نوعية ضمن مسيرة المركز في تقديم تعليم قرآني وتربوي متكامل يبدأ من الطفولة وحتى سن الفتيات.\r\nوقد اشتمل حفل التدشين على فقرات متعددة، منها عرض مرئي تعريفي بمرافق الروضة الجديدة وتجهيزاتها الحديثة، وجولة ميدانية اطلع فيها الزوار على الفصول الدراسية المصممة وفق بيئة تعليمية جاذبة وآمنة، إضافة إلى أنشطة ترفيهية تفاعلية للأطفال، وركن للخط والرسم، مما أضفى على الأجواء طابعًا من البهجة والسرور.\r\nكما تم في نهاية الحفل تكريم الطاقم التربوي والإداري القائم على الروضة، وتوزيع هدايا رمزية على الأطفال، وتوثيق لحظات التدشين بعدسة فريق التصوير الخاص بالمركز.\r\nويأتي هذا المشروع انطلاقًا من رؤية المركز الطموحة في بناء جيل قرآني منسجم مع القيم الإسلامية، وتوفير بيئة تعليمية راقية تنمّي القدرات الذهنية والحسية والحركية للطفل، وتُعزز من ارتباطه بالقرآن الكريم منذ سنواته الأولى.\r\n", 4, null, "تدشين افتتاح روضة مركز القدس" },
                    { 2, 1, 30000.00m, new DateTime(2025, 2, 28, 0, 0, 0, 0, DateTimeKind.Unspecified), "\r\nضمن الخطة التربوية التي ينتهجها مركز القدس لتحفيظ القرآن الكريم، وحرصًا على ترسيخ المحفوظ في صدور الطالبات، نظّم المركز \"يوم السرد الشهري\"، وهو برنامج تقييم شامل يهدف إلى متابعة الحفظ وتثبيته وتقدير الجهود المبذولة من الطالبات.", true, "وقد شاركت في هذا اليوم جميع الطالبات من مختلف الحلقات والمستويات، حيث تم تنظيم جلسات سرد جماعي وفردي أمام لجان التقييم المتخصصة من معلمات ذوات خبرة في التجويد وضبط المصحف، وشملت عملية التقييم مراجعة شاملة للمحفوظات السابقة وفق الخطة الفصلية المعتمدة لكل طالبة.\r\nسادت الأجواء روح من الحماس والجدية، حيث حرصت الطالبات على تقديم أفضل ما لديهن من أداء وجودة في الحفظ، بينما قامت اللجان بتوثيق النتائج ورفع التقارير لكل حلقة لتُؤخذ بعين الاعتبار في إعداد تقارير الأداء السنوي.\r\nوتخلل اليوم فقرات تحفيزية للطالبات المتقنات، حيث تم توزيع شهادات تقدير وهدايا رمزية لكل طالبة أظهرت التزامًا وانضباطًا في حفظها، مما عزّز من روح المنافسة الإيجابية بينهن، وشجع غيرهن على المثابرة.\r\nويُعد هذا البرنامج أحد أهم البرامج التربوية التي يحرص عليها المركز، لكونه يُسهم في متابعة تطور كل طالبة بشكل دوري، ويمنح ولي الأمر والمعلمة صورة واضحة عن مستوى الحفظ والثغرات التي تحتاج مراجعة ومعالجة.\r\nختامًا، فإن يوم السرد الشهري ليس مجرد تقييم، بل هو احتفال شهري بمنهجية القرآن، وانتصار للإصرار والمثابرة، وتجسيد عملي لمقولة: \"خيركم من تعلم القرآن وعلّمه\".", 4, null, "يوم السرد الشهري لتثبيت المحفوظ" },
                    { 3, 1, 30000.00m, new DateTime(2025, 3, 2, 0, 0, 0, 0, DateTimeKind.Unspecified), "\r\nفي إطار تعزيز الكفاءة المهنية وبناء بيئة تعليمية مؤثرة وفاعلة، شاركت معلمات وإداريات مركز القدس لتحفيظ القرآن الكريم في أنشطة القيادة التربوية التي تهدف إلى تطوير المهارات القيادية، وتنمية القدرات في التخطيط والتنظيم والإشراف التربوي.", true, "\r\nوقد تمثلت المشاركة في حضور اللقاءات التربوية الدورية، والمساهمة في إعداد الخطط التعليمية للحلقات، وتنظيم الفعاليات القرآنية والتربوية داخل المركز، وتقديم المبادرات النوعية التي تُسهم في رفع جودة الأداء داخل الحلقة وخارجها.\r\nكما شاركت عدد من المعلمات في مهام قيادية داخل المركز، مثل الإشراف العام على الحلقات، وتوجيه المعلمات المستجدات، وإعداد ملفات الإنجاز، ومتابعة تنفيذ المعايير التعليمية والتقويمية.\r\nوتعكس هذه المشاركة روح المسؤولية العالية لدى الفريق التربوي في المركز، وحرصه على ترسيخ القيم القيادية القائمة على العمل الجماعي، والقدوة الصالحة، والتطوير المستمر، بما يواكب رؤية المركز في إعداد جيل قرآني متمكن، تقوده كوادر مؤهلة قياديًا وتربويًا.", 4, null, "المشاركة في القيادة التربوية" }
                });

            migrationBuilder.InsertData(
                table: "FinancialSupport",
                columns: new[] { "FinancialSupportID", "AcademicYearID", "Amount", "Date", "Notes", "SupporterName" },
                values: new object[,]
                {
                    { 1, 1, 100000.00m, new DateTime(2024, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), "دعم شهري", "محسن الخير" },
                    { 2, 1, 500000.00m, new DateTime(2024, 4, 20, 0, 0, 0, 0, DateTimeKind.Unspecified), "دعم مشروع", "شركة الأمل" },
                    { 3, 1, 50000.00m, new DateTime(2024, 5, 5, 0, 0, 0, 0, DateTimeKind.Unspecified), "دعم عام", "فاعل خير" },
                    { 4, 1, 600000.00m, new DateTime(2024, 10, 10, 0, 0, 0, 0, DateTimeKind.Unspecified), "دعم الأنشطة", "مؤسسة النور" },
                    { 5, 1, 20000.00m, new DateTime(2024, 11, 25, 0, 0, 0, 0, DateTimeKind.Unspecified), "دعم شهري", "أحمد محمد" }
                });

            migrationBuilder.InsertData(
                table: "Halaqa",
                columns: new[] { "HalaqaID", "AcademicYearID", "Name", "Period", "TeacherID" },
                values: new object[,]
                {
                    { 1, 1, "حلقة النور", "صباحي", 1 },
                    { 2, 1, "حلقة الفرقان", "مسائي", 2 },
                    { 3, 1, "حلقة الإيمان", "صباحي", 3 },
                    { 4, 1, "حلقة الهدى", "مسائي", 2 },
                    { 5, 1, "حلقة الفلاح", "صباحي", 1 },
                    { 6, 1, "حلقة التقوى", "مسائي", 2 },
                    { 7, 1, "حلقة البر", "صباحي", 1 },
                    { 8, 1, "حلقة الإحسان", "مسائي", 2 },
                    { 9, 1, "حلقة الصديق", "صباحي", 2 },
                    { 10, 1, "حلقة الفاروق", "مسائي", 3 }
                });

            migrationBuilder.InsertData(
                table: "ActivitiesImages",
                columns: new[] { "ActivityImageID", "Caption", "ExpenseID", "ImageURL", "UploadedAt" },
                values: new object[,]
                {
                    { 1, "تدشين افتتاح روضة مركز القدس", 1, "/images/uploads/Resources/img1.jpg", new DateTime(2025, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 2, "يوم السرد الشهري لتثبيت المحفوظ", 2, "/images/uploads/Resources/img2.jpg", new DateTime(2025, 2, 28, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 3, "يوم السرد الشهري لتثبيت المحفوظ", 2, "/images/uploads/Resources/img4.jpg", new DateTime(2025, 2, 28, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 4, "يوم السرد الشهري لتثبيت المحفوظ", 2, "/images/uploads/Resources/img5.jpg", new DateTime(2025, 2, 28, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 5, "المشاركة في القيادة التربوية", 3, "/images/uploads/Resources/img3.jpg", new DateTime(2025, 3, 2, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "Student",
                columns: new[] { "StudentID", "Address", "BeginOfMemorize", "BirthDate", "CurrentEducationalLevel", "EducationalQualification", "HalaqaID", "MemorizationQuorum", "Name", "ParentID", "PhoneNumber" },
                values: new object[,]
                {
                    { 2, "المكلا", "الناس", new DateTime(2013, 5, 10, 0, 0, 0, 0, DateTimeKind.Unspecified), "ابتدائي", "ابتدائي", 1, "جزء عم", "ليلى أحمد علي", 1, null },
                    { 3, "المكلا", "ق", new DateTime(2011, 8, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), "إعدادي", "إعدادي", 2, "جزء تبارك", "نور محمد عمر", 2, "712222222" },
                    { 4, "المكلا", "الفرقان", new DateTime(2008, 3, 20, 0, 0, 0, 0, DateTimeKind.Unspecified), "ثانوي", "ثانوي", 3, "جزء قد سمع", "هدى يوسف خالد", 3, "713333333" },
                    { 5, "المكلا", "الناس", new DateTime(2014, 9, 25, 0, 0, 0, 0, DateTimeKind.Unspecified), "ابتدائي", "ابتدائي", 4, "جزء عم", "منى عبدالله سعيد", 4, null },
                    { 6, "المكلا", "ق", new DateTime(2012, 6, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "إعدادي", "إعدادي", 5, "جزء تبارك", "سارة عمر حسن", 5, "715555555" },
                    { 7, "المكلا", "الفرقان", new DateTime(2009, 1, 5, 0, 0, 0, 0, DateTimeKind.Unspecified), "ثانوي", "ثانوي", 6, "جزء قد سمع", "ريم علي حسين", 6, "716666666" },
                    { 8, "المكلا", "الناس", new DateTime(2013, 4, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), "ابتدائي", "ابتدائي", 7, "جزء عم", "آية خالد محمود", 7, null },
                    { 9, "المكلا", "ق", new DateTime(2010, 7, 18, 0, 0, 0, 0, DateTimeKind.Unspecified), "إعدادي", "إعدادي", 8, "جزء تبارك", "فاطمة سعيد سامي", 8, "718888888" },
                    { 10, "المكلا", "الفرقان", new DateTime(2007, 2, 23, 0, 0, 0, 0, DateTimeKind.Unspecified), "ثانوي", "ثانوي", 9, "جزء قد سمع", "زينب إبراهيم أنور", 9, "719999999" },
                    { 11, "المكلا", "الناس", new DateTime(2014, 11, 28, 0, 0, 0, 0, DateTimeKind.Unspecified), "ابتدائي", "ابتدائي", 10, "جزء عم", "مريم إسماعيل ياسر", 10, null }
                });

            migrationBuilder.InsertData(
                table: "FinalExam",
                columns: new[] { "FinalExamID", "Date", "MemorizeScore", "Notes", "ReviewScore", "StudentID", "TotalScore" },
                values: new object[] { 1002, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 50.0, "ممتاز", 50.0, 3, 100.0 });

            migrationBuilder.InsertData(
                table: "FinalExam",
                columns: new[] { "FinalExamID", "Date", "MemorizeScore", "Notes", "ReviewScore", "StudentID", "TotalScore" },
                values: new object[] { 1003, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 50.0, null, 50.0, 3, 100.0 });

            migrationBuilder.InsertData(
                table: "MonthlyExam",
                columns: new[] { "MonthlyExamID", "Date", "MemorizeScore", "Notes", "ReviewScore", "StudentID", "TotalScore" },
                values: new object[] { 1, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 8.0, null, 8.0, 3, 16.0 });

            migrationBuilder.CreateIndex(
                name: "IX_ActivitiesImages_ExpenseID",
                table: "ActivitiesImages",
                column: "ExpenseID");

            migrationBuilder.CreateIndex(
                name: "IX_AnnualReports_StudentId",
                table: "AnnualReports",
                column: "StudentId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetRoleClaims_RoleId",
                table: "AspNetRoleClaims",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "AspNetRoles",
                column: "NormalizedName",
                unique: true,
                filter: "[NormalizedName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserClaims_UserId",
                table: "AspNetUserClaims",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserLogins_UserId",
                table: "AspNetUserLogins",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserRoles_RoleId",
                table: "AspNetUserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "AspNetUsers",
                column: "NormalizedEmail");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "AspNetUsers",
                column: "NormalizedUserName",
                unique: true,
                filter: "[NormalizedUserName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_CenterAnnualReports_AcademicYearId",
                table: "CenterAnnualReports",
                column: "AcademicYearId");

            migrationBuilder.CreateIndex(
                name: "IX_CenterAnnualReports_CreatedByNavigationId",
                table: "CenterAnnualReports",
                column: "CreatedByNavigationId");

            migrationBuilder.CreateIndex(
                name: "IX_DailyEvaluation_StudentID",
                table: "DailyEvaluation",
                column: "StudentID");

            migrationBuilder.CreateIndex(
                name: "IX_DailyMemorizePlans_MemorizePlanId",
                table: "DailyMemorizePlans",
                column: "MemorizePlanId");

            migrationBuilder.CreateIndex(
                name: "IX_DailyReviewPlans_ReviewPlanId",
                table: "DailyReviewPlans",
                column: "ReviewPlanId");

            migrationBuilder.CreateIndex(
                name: "IX_Expenses_AcademicYearID",
                table: "Expenses",
                column: "AcademicYearID");

            migrationBuilder.CreateIndex(
                name: "IX_Expenses_PaidByNavigationId",
                table: "Expenses",
                column: "PaidByNavigationId");

            migrationBuilder.CreateIndex(
                name: "IX_FinalExam_StudentID",
                table: "FinalExam",
                column: "StudentID");

            migrationBuilder.CreateIndex(
                name: "IX_FinancialSummaries_AcademicYearId",
                table: "FinancialSummaries",
                column: "AcademicYearId");

            migrationBuilder.CreateIndex(
                name: "IX_FinancialSupport_AcademicYearID",
                table: "FinancialSupport",
                column: "AcademicYearID");

            migrationBuilder.CreateIndex(
                name: "IX_Halaqa_AcademicYearID",
                table: "Halaqa",
                column: "AcademicYearID");

            migrationBuilder.CreateIndex(
                name: "IX_Halaqa_TeacherID",
                table: "Halaqa",
                column: "TeacherID");

            migrationBuilder.CreateIndex(
                name: "IX_HalaqaManhaj_HalaqaID",
                table: "HalaqaManhaj",
                column: "HalaqaID");

            migrationBuilder.CreateIndex(
                name: "IX_HalaqaManhaj_ManhajID",
                table: "HalaqaManhaj",
                column: "ManhajID");

            migrationBuilder.CreateIndex(
                name: "IX_MemorizePlan_StudentID",
                table: "MemorizePlan",
                column: "StudentID");

            migrationBuilder.CreateIndex(
                name: "IX_MonthlyExam_StudentID",
                table: "MonthlyExam",
                column: "StudentID");

            migrationBuilder.CreateIndex(
                name: "IX_Path_Halaqa_Relationship_HalaqaID",
                table: "Path_Halaqa_Relationship",
                column: "HalaqaID");

            migrationBuilder.CreateIndex(
                name: "IX_Path_Halaqa_Relationship_MemorizationPathPathId",
                table: "Path_Halaqa_Relationship",
                column: "MemorizationPathPathId");

            migrationBuilder.CreateIndex(
                name: "IX_ReviewPlans_StudentId",
                table: "ReviewPlans",
                column: "StudentId");

            migrationBuilder.CreateIndex(
                name: "IX_Student_HalaqaID",
                table: "Student",
                column: "HalaqaID");

            migrationBuilder.CreateIndex(
                name: "IX_Student_ParentID",
                table: "Student",
                column: "ParentID");

            migrationBuilder.CreateIndex(
                name: "IX_TeacherAttendance_RecordedByNavigationId",
                table: "TeacherAttendance",
                column: "RecordedByNavigationId");

            migrationBuilder.CreateIndex(
                name: "IX_TeacherAttendance_TeacherID",
                table: "TeacherAttendance",
                column: "TeacherID");

            migrationBuilder.CreateIndex(
                name: "IX_TermReports_StudentId",
                table: "TermReports",
                column: "StudentId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ActivitiesImages");

            migrationBuilder.DropTable(
                name: "AnnualReports");

            migrationBuilder.DropTable(
                name: "AspNetRoleClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserLogins");

            migrationBuilder.DropTable(
                name: "AspNetUserRoles");

            migrationBuilder.DropTable(
                name: "AspNetUserTokens");

            migrationBuilder.DropTable(
                name: "CenterAnnualReports");

            migrationBuilder.DropTable(
                name: "DailyEvaluation");

            migrationBuilder.DropTable(
                name: "DailyMemorizePlans");

            migrationBuilder.DropTable(
                name: "DailyReviewPlans");

            migrationBuilder.DropTable(
                name: "FinalExam");

            migrationBuilder.DropTable(
                name: "FinancialSummaries");

            migrationBuilder.DropTable(
                name: "FinancialSupport");

            migrationBuilder.DropTable(
                name: "HalaqaManhaj");

            migrationBuilder.DropTable(
                name: "MonthlyExam");

            migrationBuilder.DropTable(
                name: "Path_Halaqa_Relationship");

            migrationBuilder.DropTable(
                name: "TeacherAttendance");

            migrationBuilder.DropTable(
                name: "TermReports");

            migrationBuilder.DropTable(
                name: "Expenses");

            migrationBuilder.DropTable(
                name: "AspNetRoles");

            migrationBuilder.DropTable(
                name: "MemorizePlan");

            migrationBuilder.DropTable(
                name: "ReviewPlans");

            migrationBuilder.DropTable(
                name: "Manhaj");

            migrationBuilder.DropTable(
                name: "MemorizationPath");

            migrationBuilder.DropTable(
                name: "AspNetUsers");

            migrationBuilder.DropTable(
                name: "Student");

            migrationBuilder.DropTable(
                name: "Halaqa");

            migrationBuilder.DropTable(
                name: "Parents");

            migrationBuilder.DropTable(
                name: "AcademicYear");

            migrationBuilder.DropTable(
                name: "Teacher");
        }
    }
}
