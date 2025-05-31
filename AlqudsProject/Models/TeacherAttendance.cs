using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class TeacherAttendance
    {
        public int TeacherAttendanceId { get; set; }
        public int? TeacherId { get; set; }
        public DateTime Date { get; set; }
        public string Status { get; set; } = null!;
        public int? RecordedBy { get; set; }

        public virtual Account? RecordedByNavigation { get; set; }
        public virtual Teacher? Teacher { get; set; }
    }
}
