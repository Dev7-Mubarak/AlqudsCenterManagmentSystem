using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class FinancialSummary
    {
        public int FinancialSummaryId { get; set; }
        public int? AcademicYearId { get; set; }
        public decimal? TotalSupport { get; set; }
        public decimal? TotalExpenses { get; set; }
        public decimal? Balance { get; set; }
        public DateTime? CreatedAt { get; set; }

        public virtual AcademicYear? AcademicYear { get; set; }
    }
}
