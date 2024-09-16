using SEGURA_ASSETMENTS.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace SEGURA_ASSETMENTS.Data
{
    public class SEGURA_ASSETMENTSContext : IdentityDbContext<AspNetUsers>
    {
        public SEGURA_ASSETMENTSContext(DbContextOptions<SEGURA_ASSETMENTSContext> options) : base(options)
        {

        }
        public DbSet<AspNetUsers> AspNetUsers { get; set; }
        public DbSet<Departamento> Departamentos { get; set; }
        public DbSet<Habitacion> Habitaciones { get; set; }
        public DbSet<Reserva> Reservas { get; set; }
        public DbSet<Sede> Sedes { get; set; }
        public DbSet<Tarifa> Tarifas { get; set; }

    }
}