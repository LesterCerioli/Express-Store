namespace ExpressStore.Modules.Core.ViewModels
{
    public class ThemeManifestViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeCompleto")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string FullName { get; set; }

        [DisplayName("Versao")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(100)]
        public string Version { get; set; }
        
    }
}