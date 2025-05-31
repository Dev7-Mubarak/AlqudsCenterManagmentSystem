using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class DailyMemorizePlan
    {
        public int DailyMemorizePlanId { get; set; }
        public DateTime? Date { get; set; }
        public string? Day { get; set; }
        public string? Surah { get; set; }
        public string? Amount { get; set; }
        public int? MemorizePlanId { get; set; }
        public int? FromPage { get; set; }
        public int? ToPage { get; set; }

        public virtual MemorizePlan? MemorizePlan { get; set; }
    }
}
