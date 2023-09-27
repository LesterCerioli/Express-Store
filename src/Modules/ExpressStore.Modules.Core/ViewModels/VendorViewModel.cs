namespace ExpressStore.Modules.Core.ViewModels
{
    public class VendorViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeFornecedor")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MinLength(100)]
        public string Name { get; private set; }

        [DisplayName("EmailFornecedor")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(100)]
        public string EmailAddress { get; set; }
        
    }
}