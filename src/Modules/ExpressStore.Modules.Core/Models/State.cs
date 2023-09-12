using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class State : Entity, IAggregateRoot
    {
        [MaxLength(100)]
        public string? Name { get; private set; }

        [MaxLength(2)]
        public string? UF { get; private set; }

        
    }
}
