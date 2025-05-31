using System.ComponentModel.DataAnnotations;

namespace AlqudsProject.ViewModels
{
    public class DailyMemorizePlanViewModel
    {
        [Display(Name = "التاريخ")]
        public DateTime Date { get; set; }

        [Display(Name = "اليوم")]
        public string? Day { get; set; }

        [Display(Name = "السورة")]
        public string Surah { get; set; } = "";

        [Display(Name = "الكمية")]
        public string Amount { get; set; } = "";
        public int FromPage { get; set; }
        public int ToPage { get; set; }

    }
}
