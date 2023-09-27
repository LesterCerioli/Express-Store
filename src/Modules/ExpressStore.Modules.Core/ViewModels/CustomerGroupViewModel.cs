namespace ExpressStore.Modules.Core.ViewModels
{
    public class CustomerGroup
    {
        [Key]
        public Guid Id { get; set; }

        [DisplayName("NomeGrupo")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(450)]
        public string Name { get; set; }

        [DisplayName("Descricao")]
        [Required(ErrorMessage = "O preenchimento do campo é obrigatório")]
        [MaxLength(450)]
        public string Description { get; set; }
        
    }
}