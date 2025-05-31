using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Halaqa
    {
        public Halaqa()
        {
            HalaqaManhajs = new HashSet<HalaqaManhaj>();
            PathHalaqaRelationships = new HashSet<PathHalaqaRelationship>();
            Students = new HashSet<Student>();
        }

        public int HalaqaId { get; set; }
        public string Name { get; set; } = null!;
        public string Period { get; set; } = null!;
        public int? TeacherId { get; set; }
        public int? AcademicYearId { get; set; }

        public virtual AcademicYear? AcademicYear { get; set; }
        public virtual Teacher? Teacher { get; set; }
        public virtual ICollection<HalaqaManhaj> HalaqaManhajs { get; set; }
        public virtual ICollection<PathHalaqaRelationship> PathHalaqaRelationships { get; set; }
        public virtual ICollection<Student> Students { get; set; }
    }
}
