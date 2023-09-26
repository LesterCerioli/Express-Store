namespace ExpressStore.Modules.Core.ViewModels
{
    public class AppSettingViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("Valor")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string Value { get; private set; }

        [DisplayName("Modulo")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string Module { get; private set; }
        
    }
}