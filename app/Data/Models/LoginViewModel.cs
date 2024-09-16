using System.ComponentModel.DataAnnotations;

namespace SEGURA_ASSETMENTS.Models
{
    public class LoginViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string contrasena { get; set; }

        [Display(Name = "Recordar sesión?")]
        public bool RememberMe { get; set; }
    }
}
