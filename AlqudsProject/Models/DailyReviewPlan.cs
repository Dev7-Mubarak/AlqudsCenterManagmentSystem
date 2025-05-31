using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class DailyReviewPlan
    {
        public int DailyReviewPlanId { get; set; }
        public DateTime? Date { get; set; }
        public string? Surah { get; set; }
        public string? Amount { get; set; }
        public int? ReviewPlanId { get; set; }

        public virtual ReviewPlan? ReviewPlan { get; set; }
    }
}
