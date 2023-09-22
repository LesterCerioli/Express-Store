namespace ExpressStore.Modules.Core.ViewModels
{
    public class MediaViewModel
    {
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string Caption { get; set; }

        [Required(ErrorMessage = "Este campo é obrigatório.")]
        public int FileSize { get; set; }

        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string FileName { get; set; }
        
    }
}