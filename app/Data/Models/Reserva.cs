

using System.ComponentModel.DataAnnotations;

namespace SEGURA_ASSETMENTS.Models
{
    public class Reserva
    {
        [Key]
        public int ID_Reservas { get; set; }
        public DateTime FechaReserva { get; set; }
        public DateTime FechaLlegada { get; set; }
        public DateTime FechaSalida { get; set; }
        public int NumeroPersonas { get; set; }
        public int NumeroNoches { get; set; }
        public string Lavanderia { get; set; }
        public int ID_Sede { get; set; }
        public int ID_Cliente { get; set; }

        // Relaciones
        public Sede Sede { get; set; }
        public AspNetUsers AspNetUsers { get; set; }
    }

}