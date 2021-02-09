using Dominio;
using Microsoft.EntityFrameworkCore;

namespace Persistencia
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder) {
            modelBuilder.Entity<tipousuario>().HasKey(ci => new { ci.idtipousuario });
        }
        public DbSet<usuario> usuario { get; set; }
        public DbSet<tipousuario> tipousuario { get; set; }
    
    }
}