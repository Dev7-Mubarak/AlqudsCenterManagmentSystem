using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class AcademicYear
    {
        public AcademicYear()
        {
            CenterAnnualReports = new HashSet<CenterAnnualReport>();
            Expenses = new HashSet<Expense>();
            FinancialSummaries = new HashSet<FinancialSummary>();
            FinancialSupports = new HashSet<FinancialSupport>();
            Halaqas = new HashSet<Halaqa>();
        }

        public int AcademicYearId { get; set; }
        public string? AcademicYear1 { get; set; }
        public DateTime? DateOfBeginYear { get; set; }
        public DateTime? DateOfEndYear { get; set; }
        public bool? IsActive { get; set; }
        public DateTime? StudentRegistrationSuspensionDate { get; set; }

        public virtual ICollection<CenterAnnualReport> CenterAnnualReports { get; set; }
        public virtual ICollection<Expense> Expenses { get; set; }
        public virtual ICollection<FinancialSummary> FinancialSummaries { get; set; }
        public virtual ICollection<FinancialSupport> FinancialSupports { get; set; }
        public virtual ICollection<Halaqa> Halaqas { get; set; }
    }
}
