using Dominio;
using Microsoft.EntityFrameworkCore;

namespace Persistencia
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions options) : base(options)
        {

        }
        //protected override void OnModelCreating(ModelBuilder modelBuilder) {
        //    modelBuilder.Entity<tipousuario>().HasKey(ci => new { ci.idtipousuario });
        //}
        public DbSet<usuarios> usuarios { get; set; }
        public DbSet<tipo_usuarios> tipo_usuarios { get; set; }
    
    }
}