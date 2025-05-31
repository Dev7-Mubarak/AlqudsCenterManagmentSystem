using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class MonthlyExam
    {
        public int MonthlyExamId { get; set; }
        public int StudentId { get; set; }
        public DateTime Date { get; set; }
        public double? MemorizeScore { get; set; }
        public double? ReviewScore { get; set; }
        public double? TotalScore { get; set; }
        public string? Notes { get; set; }

        public virtual Student Student { get; set; } = null!;
    }
}
