﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.ViewModels
{
    public class ProjectDetailsVm
    {
        public long Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string ThumbnailUrl { get; set; }

        public IEnumerable<string> ScreenshotUrls { get; set; }

        public long PackageSize { get; set; }

        public string SimplCommerceVersion { get; set; }

        public string Publisher { get; set; }

        public bool IsInstalled { get; set; }
    }
}
