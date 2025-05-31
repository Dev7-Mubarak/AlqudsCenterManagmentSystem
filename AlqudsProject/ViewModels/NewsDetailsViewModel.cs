namespace AlqudsProject.ViewModels
{
    public class NewsDetailsViewModel
    {
        public int Id { get; set; } 
        public string Title { get; set; }
        public string Description { get; set; }
        public string Notes { get; set; }
        public List<string> ImagePaths { get; set; }
    }
}
