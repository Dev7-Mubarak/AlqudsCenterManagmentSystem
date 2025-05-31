namespace AlqudsProject.ViewModels
{
    public class StudentDailyRow
    {
        public int StudentID { get; set; }
        public string? StudentName { get; set; }
        public string? TodaysMemorize { get; set; }
        public string AttendanceStatus { get; set; }
        public double? MemorizeScore { get; set; }
        public double? ReviewScore { get; set; }
        public double? TotalScore { get; set; }

    }
}
