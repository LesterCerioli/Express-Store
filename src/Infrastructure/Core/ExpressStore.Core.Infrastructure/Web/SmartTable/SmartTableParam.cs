using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Core.Infrastructure.Web.SmartTable
{
    public class SmartTableParam
    {
        public Pagination Pagination { get; set; }

        public Search Search { get; set; }

        public Sort Sort { get; set; }
    }
}
