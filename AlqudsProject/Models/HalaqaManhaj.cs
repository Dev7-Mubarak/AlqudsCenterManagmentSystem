using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class HalaqaManhaj
    {
        public int HalaqaManhajId { get; set; }
        public int? HalaqaId { get; set; }
        public int? ManhajId { get; set; }

        public virtual Halaqa? Halaqa { get; set; }
        public virtual Manhaj? Manhaj { get; set; }
    }
}
