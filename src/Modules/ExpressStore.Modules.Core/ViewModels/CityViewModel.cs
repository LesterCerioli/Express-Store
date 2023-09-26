namespace ExpressStore.Modules.Core.ViewModels
{
    public class CityViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeCidade")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(100)]
        public string Name { get; private set; }
        
    }
}