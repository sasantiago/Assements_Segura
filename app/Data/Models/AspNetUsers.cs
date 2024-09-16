using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using SEGURA_ASSETMENTS.Models;


namespace SEGURA_ASSETMENTS.Models
{
    
public class AspNetUsers:IdentityUser
{
    
    public string NombreCompleto { get; set; }
    public DateTime FechaNacimiento { get; set; }
    public string Id_Departamento { get; set; }
    public string Municipio { get; set; }
    public string Barrio { get; set; }
    public string Direccion { get; set; }

    // Relaciones
     public Departamento? Departamento { get; set; }
}
}
