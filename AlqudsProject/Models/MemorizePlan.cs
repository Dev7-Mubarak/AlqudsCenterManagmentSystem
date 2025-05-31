using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class MemorizePlan
    {
        public MemorizePlan()
        {
            DailyMemorizePlans = new HashSet<DailyMemorizePlan>();
        }

        public int MemorizePlanId { get; set; }
        public DateTime? Date { get; set; }
        public int? BeginPage { get; set; }
        public double? DailyAmount { get; set; }
        public int? StudentId { get; set; }

        public virtual Student? Student { get; set; }
        public virtual ICollection<DailyMemorizePlan> DailyMemorizePlans { get; set; }
    }
}
