namespace ExpressStore.Modules.Core.ViewModels
{
    public class StateViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeEstado")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(100)]
        public string StateName { get; private set; }

        [DisplayName("UF")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(2)]
        public string UF { get; private set; }

        [DisplayName("NomePaís")]
        [MaxLength(100)]
        public string CountryName { get; set; }
        
    }
}