using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class PathHalaqaRelationship
    {
        public int PathHalaqaId { get; set; }
        public int PathId { get; set; }
        public int HalaqaId { get; set; }

        public virtual Halaqa Halaqa { get; set; } = null!;
        public virtual MemorizationPath MemorizationPath { get; set; } = null!;
    }
}
