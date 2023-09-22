namespace ExpressStore.Modules.Core.ViewModels
{
    public class DistrictViewModel
    {
        public Guid Id { get; set; }

        [DisplayName("NomeBairro")]
        [Required(ErrorMessage = "O preenchimento do NOME DO BAIRRO é obrigatório")]
        [MaxLength(450)]
        public string Name { get; private set; }

        [DisplayName("NomeTipo")]
        [Required(ErrorMessage = "O preenchimento do TIPO é obrigatório")]
        [MaxLength(450)]
        public string Type { get; private set; }

        [DisplayName("NomeLocalizacao")]
        [Required(ErrorMessage = "O preenchimento da LOCALIZAÇÃO é obrigatório")]
        [MaxLength(450)]
        public string Location { get; private set; }
        
    }
}