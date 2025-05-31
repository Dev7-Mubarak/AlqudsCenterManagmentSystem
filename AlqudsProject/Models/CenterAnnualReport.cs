using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class CenterAnnualReport
    {
        public int CenterAnnualReportId { get; set; }
        public int? AcademicYearId { get; set; }
        public int? TotalStudents { get; set; }
        public int? NewStudents { get; set; }
        public int? GraduatedStudents { get; set; }
        public int? TotalTeachers { get; set; }
        public int? TotalHalaqat { get; set; }
        public int? EventsCount { get; set; }
        public string? Achievements { get; set; }
        public string? Challenges { get; set; }
        public string? Recommendations { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }

        public virtual AcademicYear? AcademicYear { get; set; }
        public virtual Account? CreatedByNavigation { get; set; }
    }
}
