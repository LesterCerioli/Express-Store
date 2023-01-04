using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Core.Infrastructure.Web.SmartTable
{
    public class Sort
    {
        public string Predicate { get; set; }

        public bool Reverse { get; set; }
    }
}
