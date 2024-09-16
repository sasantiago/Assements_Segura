

using System.ComponentModel.DataAnnotations;

namespace SEGURA_ASSETMENTS.Models
{
    public class Habitacion
    {
        [Key]
        public int Id_Habitaciones { get; set; }
        public string Nombre { get; set; }
        public int CamasSencillas { get; set; }
        public int CamasDobles { get; set; }
        public string Bano { get; set; }
        public string Televisor { get; set; }
        public string Terraza { get; set; }
        public string Comedor { get; set; }
        public string Cocina { get; set; }
        public string SalaConSofa { get; set; }
        public int Precio { get; set; }
        
        // public ICollection<Reserva> Reservas { get; set; }
    }

}