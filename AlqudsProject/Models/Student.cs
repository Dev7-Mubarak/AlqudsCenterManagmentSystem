using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Student
    {
        public Student()
        {
            AnnualReports = new HashSet<AnnualReport>();
            DailyEvaluations = new HashSet<DailyEvaluation>();
            FinalExams = new HashSet<FinalExam>();
            MemorizePlans = new HashSet<MemorizePlan>();
            MonthlyExams = new HashSet<MonthlyExam>();
            ReviewPlans = new HashSet<ReviewPlan>();
            TermReports = new HashSet<TermReport>();
        }

        public int StudentId { get; set; }
        public string Name { get; set; } = null!;
        public DateTime? BirthDate { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Address { get; set; }
        public string? CurrentEducationalLevel { get; set; }
        public string? EducationalQualification { get; set; }
        public int HalaqaId { get; set; }
        public int? ParentId { get; set; }
        public string? BeginOfMemorize { get; set; }
        public string? MemorizationQuorum { get; set; }

        public virtual Halaqa Halaqa { get; set; } = null!;
        public virtual Parent? Parent { get; set; }
        public virtual ICollection<AnnualReport> AnnualReports { get; set; }
        public virtual ICollection<DailyEvaluation> DailyEvaluations { get; set; }
        public virtual ICollection<FinalExam> FinalExams { get; set; }
        public virtual ICollection<MemorizePlan> MemorizePlans { get; set; }
        public virtual ICollection<MonthlyExam> MonthlyExams { get; set; }
        public virtual ICollection<ReviewPlan> ReviewPlans { get; set; }
        public virtual ICollection<TermReport> TermReports { get; set; }
    }
}
