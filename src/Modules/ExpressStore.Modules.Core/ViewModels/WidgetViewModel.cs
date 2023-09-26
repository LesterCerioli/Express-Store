namespace ExpressStore.Modules.Core.ViewModels
{
    public class WidgetViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("Nome")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MinLength(100)]
        public string Name { get; private set; }

        [DisplayName("ViewNomeComponente")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string ViewComponentName { get; private set; }

        [DisplayName("CriarUrl")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string CreateUrl { get; private set; }

        [DisplayName("EditarUrl")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string EditUrl { get; private set; }

    }
}