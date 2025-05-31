using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class RoleAccount
    {
        public int RoleAccountId { get; set; }
        public int AccountId { get; set; }
        public int RoleId { get; set; }

        public virtual Account Account { get; set; } = null!;
        public virtual Role Role { get; set; } = null!;
        public int? TeacherId { get; set; }
    }
}
