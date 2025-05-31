using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Manhaj
    {
        public Manhaj()
        {
            HalaqaManhajs = new HashSet<HalaqaManhaj>();
        }

        public int ManhajId { get; set; }
        public string? Name { get; set; }
        public string? Url { get; set; }
        public string? Picture { get; set; }

        public virtual ICollection<HalaqaManhaj> HalaqaManhajs { get; set; }
    }
}
