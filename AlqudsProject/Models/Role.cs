using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Role
    {
        public Role()
        {
            RoleAccounts = new HashSet<RoleAccount>();
        }

        public int RoleId { get; set; }
        public string RoleName { get; set; } = null!;

        public virtual ICollection<RoleAccount> RoleAccounts { get; set; }
    }
}
