using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class DailyEvaluation
    {
        public int DailyEvaluationId { get; set; }
        public int StudentId { get; set; }
        public DateTime Date { get; set; }
        public string AttendanceStatus { get; set; } = null!;
        public double? MemorizeScore { get; set; }
        public double? ReviewScore { get; set; }
        public double? TotalScore { get; set; }

        public virtual Student Student { get; set; } = null!;
    }
}
