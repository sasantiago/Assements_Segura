using System.ComponentModel.DataAnnotations;

namespace SEGURA_ASSETMENTS.Models
{
    public class Sede
    {
        [Key]
        public int ID_Sedes { get; set; }
        [Required]
        public string Tipo { get; set; }
        [Required]
        public string Nombre_sede { get; set; }
        [Required]
        public string Ciudad { get; set; }
        public int CapacidadSede { get; set; }
        public int NumHabitaciones { get; set; }
        public int HabitacionId { get; set; }
        [Required]
        public string ServiciosSede { get; set; }

        // Relaciones
        public Habitacion? Habitacion { get; set; }
        public ICollection<Reserva>? Reservas { get; set; }
    }
}