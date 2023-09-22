namespace ExpressStore.Modules.Core.ViewModels
{
    public class WidgetInstanceViewModel
    {
        public Guid Id { get; set; }

        [DisplayName("Nome")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string Name { get; private set; }

        [DisplayName("WidgetId")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string WidgetId { get; private set; }

        [DisplayName("Dados")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(100)]
        public string Data { get; set; }

        [DisplayName("DadosHtml")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(100)]
        public string HtmlData { get; set; }
        
    }
}