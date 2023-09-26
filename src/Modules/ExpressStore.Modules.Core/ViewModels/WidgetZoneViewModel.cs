namespace ExpressStore.Modules.Core.ViewModels
{
    public class WidgetZoneViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("Nome")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(450)]
        public string Name { get; set; }

        [DisplayName("Descrição")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(100)]
        public string Description { get; set; }
        
    }
}