using ExpressStore.Modules.Core.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Extensions
{
    public class EFConfigurationDbContext : DbContext
    {
        public EFConfigurationDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<AppSetting> AppSettings { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AppSetting>().ToTable("Core_AppSetting");
        }
    }
}
