using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class AnnualReport
    {
        public int AnnualReportId { get; set; }
        public string? MemorizeFrom { get; set; }
        public string? MemorizeTo { get; set; }
        public string? ReviewFrom { get; set; }
        public string? ReviewTo { get; set; }
        public int? MemorizeAndReviewDegree { get; set; }
        public int StudentId { get; set; }

        public virtual Student Student { get; set; } = null!;
    }
}
