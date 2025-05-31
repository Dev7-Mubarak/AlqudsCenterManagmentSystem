using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class MemorizationPath
    {
        public MemorizationPath()
        {
            PathHalaqaRelationships = new HashSet<PathHalaqaRelationship>();
        }
        [Key]
        public int PathId { get; set; }
        public string? MemorizeFrom { get; set; }
        public string? MemorizeTo { get; set; }
        public string? Name { get; set; }

        public virtual ICollection<PathHalaqaRelationship> PathHalaqaRelationships { get; set; }
    }
}
