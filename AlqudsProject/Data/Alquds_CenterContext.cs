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
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(Alquds_CenterContext).Assembly);

            base.OnModelCreating(modelBuilder);
        }
    }

}
