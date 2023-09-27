namespace ExpressStore.Modules.Core.ViewModels
{
    public class UserViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeCompleto")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string FullName { get; set; }

        [DisplayName("EnderecoEmail")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(450)]
        public string EmailAddress { get; set; }
        
    }
}