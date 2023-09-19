using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class City : Entity, IAggregateRoot
    {
        private readonly List<State> _states;

        public City(string? cityName)
        {
            CityName = cityName;
            _states = new List<State>();
        }

        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório.")]
        [MaxLength(100)]
        public string? CityName { get; private set; }

        public IReadOnlyCollection<State> States => _states.AsReadOnly();

        public State State { get; private set; }

        public Guid StateId { get; private set; }
    }
}
