using System;
using System.Collections.Generic;

namespace AlqudsProject.Models
{
    public partial class Account
    {
        public Account()
        {
            CenterAnnualReports = new HashSet<CenterAnnualReport>();
            Expenses = new HashSet<Expense>();
            RoleAccounts = new HashSet<RoleAccount>();
            TeacherAttendances = new HashSet<TeacherAttendance>();
        }

        public int AccountId { get; set; }
        public string Username { get; set; } = null!;
        public string PasswordHash { get; set; } = null!;
        public string FullName { get; set; } = null!;
        public string? Email { get; set; }
        public string? Phone { get; set; }

        public virtual ICollection<CenterAnnualReport> CenterAnnualReports { get; set; }
        public virtual ICollection<Expense> Expenses { get; set; }
        public virtual ICollection<RoleAccount> RoleAccounts { get; set; }
        public virtual ICollection<TeacherAttendance> TeacherAttendances { get; set; }
    }
}
