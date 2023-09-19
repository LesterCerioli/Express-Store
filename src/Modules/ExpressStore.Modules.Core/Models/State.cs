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
        private readonly List<Country> _countries;

        public State(string uf, string stateName)
        {
            _countries = new List<Country>();
            UF = uf;
            StateName = stateName;
        }

        public State() { }

        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [StringLength(100)]
        public string? StateName { get; private set; }

        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(2)]
        public string? UF { get; private set; }

        public Country Country { get; set; }

        public Guid CountryId { get; private set; }

        public IReadOnlyCollection<Country> Countries => _countries.AsReadOnly();
    }
}
