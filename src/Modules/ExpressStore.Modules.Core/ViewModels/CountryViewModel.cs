namespace ExpressStore.Modules.Core.ViewModels
{
    public class CountryViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomePais")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MinLength(100)]
        public string CountryName { get; private set; }

        [DisplayName("Codigo")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(450)]
        public string Code3 { get; private set; }
        
    }
}