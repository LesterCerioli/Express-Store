namespace ExpressStore.Modules.Core.ViewModels
{
    public class AddressViewModel
    {
        public Guid Id { get; set; }

        [DisplayName("NomeContato")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MinLength(100)]
        public string ContactName { get; private set; }

        [DisplayName("EnderecoCompleto")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(100)]
        public string AddressLine1 { get; private set; }

        [DisplayName("EnderecoCompleto")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MaxLength(100)]
        public string AddressLine2 { get; private set; }

        [DisplayName("TelefoneNumero")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MinLength(9)]
        public string TelefoneNumero { get; set; }

        [DisplayName("TelefoneRegião")]
        [Required(ErrorMessage = "O preenchimento deste campo é obrigatório")]
        [MinLength(2)]
        [MaxLength(2)]
        public string TelephoneRegion { get; private set; }

    }
}