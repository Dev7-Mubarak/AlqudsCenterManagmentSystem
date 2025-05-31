using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Expense
    {
        public Expense()
        {
            ActivitiesImages = new HashSet<ActivitiesImage>();
        }

        public int ExpenseId { get; set; }
        public string Title { get; set; } = null!;
        public decimal Amount { get; set; }
        public DateTime Date { get; set; }
        public int? AcademicYearId { get; set; }
        public string? Description { get; set; }
        public bool? IsActivity { get; set; }
        public string? Notes { get; set; }
        public int? PaidBy { get; set; }

        public virtual AcademicYear? AcademicYear { get; set; }
        public virtual Account? PaidByNavigation { get; set; }
        public virtual ICollection<ActivitiesImage> ActivitiesImages { get; set; }
    }
}
