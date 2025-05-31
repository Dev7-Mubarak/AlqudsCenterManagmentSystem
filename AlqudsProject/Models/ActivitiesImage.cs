using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class ActivitiesImage
    {
        public int ActivityImageId { get; set; }
        public int ExpenseId { get; set; }
        public string ImageUrl { get; set; } = null!;
        public string? Caption { get; set; }
        public DateTime? UploadedAt { get; set; }

        public virtual Expense Expense { get; set; } = null!;
    }
}