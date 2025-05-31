using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class FinancialSupport
    {
        public int FinancialSupportId { get; set; }
        public string SupporterName { get; set; } = null!;
        public decimal Amount { get; set; }
        public DateTime Date { get; set; }
        public int? AcademicYearId { get; set; }
        public string? Notes { get; set; }

        public virtual AcademicYear? AcademicYear { get; set; }
    }
}
