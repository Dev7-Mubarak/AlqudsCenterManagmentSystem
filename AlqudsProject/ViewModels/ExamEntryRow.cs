namespace AlqudsProject.ViewModels
{

    public class ExamEntryRow { 
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public double? MemorizeScore { get; set; } 
        public double? ReviewScore { get; set; } 
        public double? TotalScore { get; set; } 
        public string Notes { get; set; } }
}
