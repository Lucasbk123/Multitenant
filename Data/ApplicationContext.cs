using Microsoft.EntityFrameworkCore;
using Multitenant.Domain;
using Multitenant.Provider;

namespace Multitenant.Data
{
    public class ApplicationContext : DbContext
    {
        public DbSet<Pessoa> Pessoas { get; set; }

        public readonly TenantData TenantData;

        public ApplicationContext(DbContextOptions<ApplicationContext> options, 
          TenantData tenantData) : base(options)
        {
            TenantData = tenantData;
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema(TenantData.TenantId);

            modelBuilder.Entity<Pessoa>().HasData(
                new Pessoa { Id = 1, Nome = "Pessoa 1" },
                new Pessoa { Id = 2, Nome = "Pessoa 2" },
                new Pessoa { Id = 3, Nome = "Pessoa 3" });

        }
    }
}
