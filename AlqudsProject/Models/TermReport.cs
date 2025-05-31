using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class TermReport
    {
        public int TermReportId { get; set; }
        public string? Term { get; set; }
        public string? MonthlyResult { get; set; }
        public string? TermResult { get; set; }
        public string? TotalResult { get; set; }
        public string? Notes { get; set; }
        public int StudentId { get; set; }
        public string MemorizeFrom { get; set; } = null!;
        public string MemorizeTo { get; set; } = null!;
        public string ReviewFrom { get; set; } = null!;
        public string ReviewTo { get; set; } = null!;
        public double MemorizeDegree { get; set; }
        public double ReviewDegree { get; set; }
        public double TotalDegree { get; set; }

        public virtual Student Student { get; set; } = null!;
    }
}
