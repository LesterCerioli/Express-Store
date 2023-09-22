using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class Media : Entity, IAggregateRoot
    {
        public Media(string? caption, int? fileSize, string? fileName, MediaType mediaType)
        {
            Caption = caption;
            FileSize = fileSize;
            FileName = fileName;
            MediaType = mediaType;
        }

        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [StringLength(450)]
        public string? Caption { get; set; }

        [Required(ErrorMessage = "Este campo é obrigatório.")]
        public int? FileSize { get; set; }

        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [StringLength(450)]
        public string? FileName { get; set; }

        public MediaType MediaType { get; set; }
    }
}
