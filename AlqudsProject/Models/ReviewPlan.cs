using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class ReviewPlan
    {
        public ReviewPlan()
        {
            DailyReviewPlans = new HashSet<DailyReviewPlan>();
        }

        public int ReviewPlanId { get; set; }
        public DateTime? Date { get; set; }
        public string? BeginningOfMemorizing { get; set; }
        public string? AmountOfDelayMemorization { get; set; }
        public int? StudentId { get; set; }

        public virtual Student? Student { get; set; }
        public virtual ICollection<DailyReviewPlan> DailyReviewPlans { get; set; }
    }
}
