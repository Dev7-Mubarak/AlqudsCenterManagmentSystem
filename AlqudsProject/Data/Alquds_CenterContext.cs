using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using AlqudsProject.Models;

namespace AlqudsProject.Data
{
    public partial class Alquds_CenterContext : DbContext
    {
        public Alquds_CenterContext()
        {
        }

        public Alquds_CenterContext(DbContextOptions<Alquds_CenterContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AcademicYear> AcademicYears { get; set; } = null!;
        public virtual DbSet<Account> Accounts { get; set; } = null!;
        public virtual DbSet<ActivitiesImage> ActivitiesImages { get; set; } = null!;
        public virtual DbSet<AnnualReport> AnnualReports { get; set; } = null!;
        public virtual DbSet<CenterAnnualReport> CenterAnnualReports { get; set; } = null!;
        public virtual DbSet<DailyEvaluation> DailyEvaluations { get; set; } = null!;
        public virtual DbSet<DailyMemorizePlan> DailyMemorizePlans { get; set; } = null!;
        public virtual DbSet<DailyReviewPlan> DailyReviewPlans { get; set; } = null!;
        public virtual DbSet<Expense> Expenses { get; set; } = null!;
        public virtual DbSet<FinalExam> FinalExams { get; set; } = null!;
        public virtual DbSet<FinancialSummary> FinancialSummaries { get; set; } = null!;
        public virtual DbSet<FinancialSupport> FinancialSupports { get; set; } = null!;
        public virtual DbSet<Halaqa> Halaqas { get; set; } = null!;
        public virtual DbSet<HalaqaManhaj> HalaqaManhajs { get; set; } = null!;
        public virtual DbSet<Manhaj> Manhajs { get; set; } = null!;
        public virtual DbSet<MemorizePlan> MemorizePlans { get; set; } = null!;
        public virtual DbSet<MonthlyExam> MonthlyExams { get; set; } = null!;
        public virtual DbSet<Parent> Parents { get; set; } = null!;
        public virtual DbSet<MemorizationPath> MemorizationPath { get; set; } = null!;
        public virtual DbSet<PathHalaqaRelationship> PathHalaqaRelationships { get; set; } = null!;
        public virtual DbSet<ReviewPlan> ReviewPlans { get; set; } = null!;
        public virtual DbSet<Role> Roles { get; set; } = null!;
        public virtual DbSet<RoleAccount> RoleAccounts { get; set; } = null!;
        public virtual DbSet<Student> Students { get; set; } = null!;
        public virtual DbSet<Teacher> Teachers { get; set; } = null!;
        public virtual DbSet<TeacherAttendance> TeacherAttendances { get; set; } = null!;
        public virtual DbSet<TermReport> TermReports { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AcademicYear>(entity =>
            {
                entity.ToTable("AcademicYear");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.AcademicYear1)
                    .HasMaxLength(50)
                    .HasColumnName("AcademicYear");

                entity.Property(e => e.DateOfBeginYear).HasColumnType("date");

                entity.Property(e => e.DateOfEndYear).HasColumnType("date");

                entity.Property(e => e.StudentRegistrationSuspensionDate).HasColumnType("date");
            });

            modelBuilder.Entity<Account>(entity =>
            {
                entity.ToTable("Account");

                entity.HasIndex(e => e.Username, "UQ__Account__536C85E46ACE097A")
                    .IsUnique();

                entity.HasIndex(e => e.Phone, "UQ__Account__5C7E359E53CCA194")
                    .IsUnique();

                entity.HasIndex(e => e.Email, "UQ__Account__A9D105343E929C07")
                    .IsUnique();

                entity.Property(e => e.AccountId).HasColumnName("AccountID");

                entity.Property(e => e.Email)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.FullName)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.PasswordHash)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Phone)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.Username)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<ActivitiesImage>(entity =>
            {
                entity.HasKey(e => e.ActivityImageId)
                    .HasName("PK__Activiti__F511D3E53D2CAE6B");

                entity.Property(e => e.ActivityImageId).HasColumnName("ActivityImageID");

                entity.Property(e => e.Caption).HasMaxLength(200);

                entity.Property(e => e.ExpenseId).HasColumnName("ExpenseID");

                entity.Property(e => e.ImageUrl)
                    .HasMaxLength(200)
                    .HasColumnName("ImageURL");

                entity.Property(e => e.UploadedAt).HasColumnType("date");

                entity.HasOne(d => d.Expense)
                    .WithMany(p => p.ActivitiesImages)
                    .HasForeignKey(d => d.ExpenseId)
                    .HasConstraintName("FK_ActivitiesImages_Expense");
            });

            modelBuilder.Entity<AnnualReport>(entity =>
            {
                entity.ToTable("AnnualReport");

                entity.Property(e => e.AnnualReportId).HasColumnName("AnnualReportID");

                entity.Property(e => e.MemorizeFrom).HasMaxLength(100);

                entity.Property(e => e.MemorizeTo).HasMaxLength(100);

                entity.Property(e => e.ReviewFrom).HasMaxLength(100);

                entity.Property(e => e.ReviewTo).HasMaxLength(100);

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.AnnualReports)
                    .HasForeignKey(d => d.StudentId)
                    .HasConstraintName("FK_AnnualReport_Student");
            });

            modelBuilder.Entity<CenterAnnualReport>(entity =>
            {
                entity.ToTable("CenterAnnualReport");

                entity.Property(e => e.CenterAnnualReportId).HasColumnName("CenterAnnualReportID");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.Achievements).HasMaxLength(500);

                entity.Property(e => e.Challenges).HasMaxLength(500);

                entity.Property(e => e.CreatedAt).HasColumnType("date");

                entity.Property(e => e.Recommendations).HasMaxLength(500);

                entity.HasOne(d => d.AcademicYear)
                    .WithMany(p => p.CenterAnnualReports)
                    .HasForeignKey(d => d.AcademicYearId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_CenterAnnualReport_Year");

                entity.HasOne(d => d.CreatedByNavigation)
                    .WithMany(p => p.CenterAnnualReports)
                    .HasForeignKey(d => d.CreatedBy)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_CenterAnnualReport_Account");
            });

            modelBuilder.Entity<DailyEvaluation>(entity =>
            {
                entity.ToTable("DailyEvaluation");

                entity.Property(e => e.DailyEvaluationId).HasColumnName("DailyEvaluationID");

                entity.Property(e => e.AttendanceStatus)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.DailyEvaluations)
                    .HasForeignKey(d => d.StudentId)
                    .HasConstraintName("FK_DailyEvaluation_Student");
            });

            modelBuilder.Entity<DailyMemorizePlan>(entity =>
            {
                entity.ToTable("DailyMemorizePlan");

                entity.Property(e => e.DailyMemorizePlanId).HasColumnName("DailyMemorizePlanID");

                entity.Property(e => e.Amount).HasMaxLength(100);

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.MemorizePlanId).HasColumnName("MemorizePlanID");

                entity.Property(e => e.Surah).HasMaxLength(100);

                entity.HasOne(d => d.MemorizePlan)
                    .WithMany(p => p.DailyMemorizePlans)
                    .HasForeignKey(d => d.MemorizePlanId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_DailyMemorizePlan_MemorizePlan");
            });

            modelBuilder.Entity<DailyReviewPlan>(entity =>
            {
                entity.ToTable("DailyReviewPlan");

                entity.Property(e => e.DailyReviewPlanId).HasColumnName("DailyReviewPlanID");

                entity.Property(e => e.Amount).HasMaxLength(100);

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.ReviewPlanId).HasColumnName("ReviewPlanID");

                entity.Property(e => e.Surah).HasMaxLength(100);

                entity.HasOne(d => d.ReviewPlan)
                    .WithMany(p => p.DailyReviewPlans)
                    .HasForeignKey(d => d.ReviewPlanId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_DailyReviewPlan_ReviewPlan");
            });

            modelBuilder.Entity<Expense>(entity =>
            {
                entity.Property(e => e.ExpenseId).HasColumnName("ExpenseID");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.Amount).HasColumnType("decimal(10, 2)");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Description).HasMaxLength(200);

                entity.Property(e => e.Notes).HasMaxLength(200);

                entity.Property(e => e.Title).HasMaxLength(100);

                entity.HasOne(d => d.AcademicYear)
                    .WithMany(p => p.Expenses)
                    .HasForeignKey(d => d.AcademicYearId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_Expenses_Year");

                entity.HasOne(d => d.PaidByNavigation)
                    .WithMany(p => p.Expenses)
                    .HasForeignKey(d => d.PaidBy)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_Expenses_PaidBy");
            });

            modelBuilder.Entity<FinalExam>(entity =>
            {
                entity.ToTable("FinalExam");

                entity.Property(e => e.FinalExamId).HasColumnName("FinalExamID");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Notes).HasColumnType("text");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.FinalExams)
                    .HasForeignKey(d => d.StudentId)
                    .HasConstraintName("FK_FinalExam_Student");
            });

            modelBuilder.Entity<FinancialSummary>(entity =>
            {
                entity.ToTable("FinancialSummary");

                entity.Property(e => e.FinancialSummaryId).HasColumnName("FinancialSummaryID");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.Balance).HasColumnType("decimal(10, 2)");

                entity.Property(e => e.CreatedAt).HasColumnType("date");

                entity.Property(e => e.TotalExpenses).HasColumnType("decimal(10, 2)");

                entity.Property(e => e.TotalSupport).HasColumnType("decimal(10, 2)");

                entity.HasOne(d => d.AcademicYear)
                    .WithMany(p => p.FinancialSummaries)
                    .HasForeignKey(d => d.AcademicYearId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_FinancialSummary_Year");
            });

            modelBuilder.Entity<FinancialSupport>(entity =>
            {
                entity.ToTable("FinancialSupport");

                entity.Property(e => e.FinancialSupportId).HasColumnName("FinancialSupportID");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.Amount).HasColumnType("decimal(10, 2)");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Notes).HasMaxLength(200);

                entity.Property(e => e.SupporterName).HasMaxLength(100);

                entity.HasOne(d => d.AcademicYear)
                    .WithMany(p => p.FinancialSupports)
                    .HasForeignKey(d => d.AcademicYearId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_FinancialSupport_Year");
            });

            modelBuilder.Entity<Halaqa>(entity =>
            {
                entity.ToTable("Halaqa");

                entity.Property(e => e.HalaqaId).HasColumnName("HalaqaID");

                entity.Property(e => e.AcademicYearId).HasColumnName("AcademicYearID");

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.Period).HasMaxLength(50);

                entity.Property(e => e.TeacherId).HasColumnName("TeacherID");

                entity.HasOne(d => d.AcademicYear)
                    .WithMany(p => p.Halaqas)
                    .HasForeignKey(d => d.AcademicYearId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK__Halaqa__Academic__70DDC3D8");

                entity.HasOne(d => d.Teacher)
                    .WithMany(p => p.Halaqas)
                    .HasForeignKey(d => d.TeacherId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK__Halaqa__TeacherI__6FE99F9F");
            });

            modelBuilder.Entity<HalaqaManhaj>(entity =>
            {
                entity.ToTable("HalaqaManhaj");

                entity.Property(e => e.HalaqaManhajId).HasColumnName("HalaqaManhajID");

                entity.Property(e => e.HalaqaId).HasColumnName("HalaqaID");

                entity.Property(e => e.ManhajId).HasColumnName("ManhajID");

                entity.HasOne(d => d.Halaqa)
                    .WithMany(p => p.HalaqaManhajs)
                    .HasForeignKey(d => d.HalaqaId)
                    .HasConstraintName("FK_HalaqaManhaj_Halaqa");

                entity.HasOne(d => d.Manhaj)
                    .WithMany(p => p.HalaqaManhajs)
                    .HasForeignKey(d => d.ManhajId)
                    .HasConstraintName("FK_HalaqaManhaj_Manhaj");
            });

            modelBuilder.Entity<Manhaj>(entity =>
            {
                entity.ToTable("Manhaj");

                entity.Property(e => e.ManhajId).HasColumnName("ManhajID");

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.Picture).HasMaxLength(200);

                entity.Property(e => e.Url)
                    .HasMaxLength(200)
                    .HasColumnName("URL");
            });

            modelBuilder.Entity<MemorizePlan>(entity =>
            {
                entity.ToTable("MemorizePlan");

                entity.Property(e => e.MemorizePlanId).HasColumnName("MemorizePlanID");

                entity.Property(e => e.DailyAmount).HasMaxLength(100);

                entity.Property(e => e.BeginPage).HasMaxLength(100);

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.MemorizePlans)
                    .HasForeignKey(d => d.StudentId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_MemorizePlan_Student");
            });

            modelBuilder.Entity<MonthlyExam>(entity =>
            {
                entity.ToTable("MonthlyExam");

                entity.Property(e => e.MonthlyExamId).HasColumnName("MonthlyExamID");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Notes).HasColumnType("text");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.MonthlyExams)
                    .HasForeignKey(d => d.StudentId)
                    .HasConstraintName("FK_MonthlyExam_Student");
            });

            modelBuilder.Entity<Parent>(entity =>
            {
                entity.HasIndex(e => e.MobileNumber, "UQ__Parents__250375B1B3714ED0")
                    .IsUnique();

                entity.HasIndex(e => e.PhoneNumber, "UQ__Parents__85FB4E386880D947")
                    .IsUnique();

                entity.Property(e => e.ParentId).HasColumnName("ParentID");

                entity.Property(e => e.MobileNumber).HasMaxLength(20);

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.PhoneNumber).HasMaxLength(20);
            });

            modelBuilder.Entity<MemorizationPath>(entity =>
            {
                entity.ToTable("MemorizationPath");

                entity.Property(e => e.PathId).HasColumnName("PathID");

                entity.Property(e => e.MemorizeFrom).HasMaxLength(100);

                entity.Property(e => e.MemorizeTo).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(100);
            });

            modelBuilder.Entity<PathHalaqaRelationship>(entity =>
            {
                entity.HasKey(e => e.PathHalaqaId)
                    .HasName("PK__Path_Hal__99817C53DECC9729");

                entity.ToTable("Path_Halaqa_Relationship");

                entity.Property(e => e.PathHalaqaId).HasColumnName("PathHalaqaID");

                entity.Property(e => e.HalaqaId).HasColumnName("HalaqaID");

                entity.Property(e => e.PathId).HasColumnName("PathID");

                entity.HasOne(d => d.Halaqa)
                    .WithMany(p => p.PathHalaqaRelationships)
                    .HasForeignKey(d => d.HalaqaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PathHalaqa_Halaqa");

                entity.HasOne(d => d.MemorizationPath)
                    .WithMany(p => p.PathHalaqaRelationships)
                    .HasForeignKey(d => d.PathId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PathHalaqa_Path");
            });

            modelBuilder.Entity<ReviewPlan>(entity =>
            {
                entity.ToTable("ReviewPlan");

                entity.Property(e => e.ReviewPlanId).HasColumnName("ReviewPlanID");

                entity.Property(e => e.AmountOfDelayMemorization).HasMaxLength(100);

                entity.Property(e => e.BeginningOfMemorizing).HasMaxLength(100);

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.ReviewPlans)
                    .HasForeignKey(d => d.StudentId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_ReviewPlan_Student");
            });

            modelBuilder.Entity<Role>(entity =>
            {
                entity.ToTable("Role");

                entity.HasIndex(e => e.RoleName, "UQ__Role__8A2B616062A1F32C")
                    .IsUnique();

                entity.Property(e => e.RoleId).HasColumnName("RoleID");

                entity.Property(e => e.RoleName)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<RoleAccount>(entity =>
            {
                entity.ToTable("RoleAccount");

                entity.Property(e => e.RoleAccountId).HasColumnName("RoleAccountID");

                entity.Property(e => e.AccountId).HasColumnName("AccountID");

                entity.Property(e => e.RoleId).HasColumnName("RoleID");

                entity.HasOne(d => d.Account)
                    .WithMany(p => p.RoleAccounts)
                    .HasForeignKey(d => d.AccountId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_RoleAccount_Account");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.RoleAccounts)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_RoleAccount_Role");
            });

            modelBuilder.Entity<Student>(entity =>
            {
                entity.ToTable("Student");

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.Property(e => e.Address).HasMaxLength(200);         

                entity.Property(e => e.BirthDate).HasColumnType("date");

                entity.Property(e => e.CurrentEducationalLevel).HasMaxLength(100);

                entity.Property(e => e.EducationalQualification).HasMaxLength(100);

                entity.Property(e => e.HalaqaId).HasColumnName("HalaqaID");                

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.ParentId).HasColumnName("ParentID");

                entity.Property(e => e.PhoneNumber).HasMaxLength(20);

                entity.HasOne(d => d.Halaqa)
                    .WithMany(p => p.Students)
                    .HasForeignKey(d => d.HalaqaId)
                    .HasConstraintName("FK__Student__HalaqaI__73BA3083");

                entity.HasOne(d => d.Parent)
                    .WithMany(p => p.Students)
                    .HasForeignKey(d => d.ParentId)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK__Student__ParentI__74AE54BC");
            });

            modelBuilder.Entity<Teacher>(entity =>
            {
                entity.ToTable("Teacher");

                entity.HasIndex(e => e.PassportNumber, "UQ__Teacher__45809E71B0212BCE")
                    .IsUnique();

                entity.HasIndex(e => e.Idnumber, "UQ__Teacher__564DB08A3A6555B6")
                    .IsUnique();

                entity.HasIndex(e => e.PhoneNumber, "UQ__Teacher__85FB4E388CF72E54")
                    .IsUnique();

                entity.Property(e => e.TeacherId).HasColumnName("TeacherID");

                entity.Property(e => e.Address).HasMaxLength(200);

                entity.Property(e => e.AmountOfMemorization).HasMaxLength(100);

                entity.Property(e => e.BirthDate).HasColumnType("date");

                entity.Property(e => e.Courses).HasMaxLength(200);

                entity.Property(e => e.EducationalQualification).HasMaxLength(100);

                entity.Property(e => e.Experience).HasMaxLength(100);

                entity.Property(e => e.Idnumber)
                    .HasMaxLength(50)
                    .HasColumnName("IDNumber");

                entity.Property(e => e.Job).HasMaxLength(100);

                entity.Property(e => e.MaritalStatus).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.PassportNumber).HasMaxLength(50);

                entity.Property(e => e.PhoneNumber).HasMaxLength(20);
            });

            modelBuilder.Entity<TeacherAttendance>(entity =>
            {
                entity.ToTable("TeacherAttendance");

                entity.Property(e => e.TeacherAttendanceId).HasColumnName("TeacherAttendanceID");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Status)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.TeacherId).HasColumnName("TeacherID");

                entity.HasOne(d => d.RecordedByNavigation)
                    .WithMany(p => p.TeacherAttendances)
                    .HasForeignKey(d => d.RecordedBy)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("FK_TeacherAttendance_RecordedBy");

                entity.HasOne(d => d.Teacher)
                    .WithMany(p => p.TeacherAttendances)
                    .HasForeignKey(d => d.TeacherId)
                    .HasConstraintName("FK_TeacherAttendance_Teacher");
            });

            modelBuilder.Entity<TermReport>(entity =>
            {
                entity.ToTable("TermReport");

                entity.Property(e => e.TermReportId).HasColumnName("TermReportID");

                entity.Property(e => e.MemorizeFrom).HasMaxLength(50);

                entity.Property(e => e.MemorizeTo).HasMaxLength(50);

                entity.Property(e => e.MonthlyResult).HasMaxLength(50);

                entity.Property(e => e.Notes).HasMaxLength(200);

                entity.Property(e => e.ReviewFrom).HasMaxLength(50);

                entity.Property(e => e.ReviewTo).HasMaxLength(50);

                entity.Property(e => e.StudentId).HasColumnName("StudentID");

                entity.Property(e => e.Term).HasMaxLength(50);

                entity.Property(e => e.TermResult).HasMaxLength(50);

                entity.Property(e => e.TotalResult).HasMaxLength(50);

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.TermReports)
                    .HasForeignKey(d => d.StudentId)
                    .HasConstraintName("FK_TermReport_Student");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
