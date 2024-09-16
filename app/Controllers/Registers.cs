using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Migrations.Operations;
using SEGURA_ASSETMENTS.Data; // Asegúrate de usar el espacio de nombres correcto
using SEGURA_ASSETMENTS.Models; // Asegúrate de usar el espacio de nombres correcto

namespace SEGURA_ASSETMENTS.Controllers
{
    public class Registers : Controller
    {
        private readonly SEGURA_ASSETMENTSContext _context;
        private readonly UserManager<AspNetUsers> _userManager;
        private readonly SignInManager<AspNetUsers> _signInManager;

        public Registers(UserManager<AspNetUsers> userManager, SignInManager<AspNetUsers> signInManager, SEGURA_ASSETMENTSContext context)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _context = context;
        }
        
        [HttpGet]
        [AllowAnonymous]
        public IActionResult Register()
        {
            return View();
        }

        // [HttpPost]
        // [AllowAnonymous]
        // [ValidateAntiForgeryToken]
        // public async Task<ActionResult> Register(Cliente model)
        // {
        //     if (ModelState.IsValid)
        //     {
        //         var user = new Cliente
        //         {
        //             customer_NombreCompleto = model.customer_NombreCompleto,
        //             UserName = model.Correo, 
        //             Email = model.Correo,
        //             Roll = model.Roll,
        //             customer_fechaNacimiento = model.customer_fechaNacimiento,
        //             Celular = model.Celular,
        //             Id_Departamento = model.Id_Departamento,
        //             Municipio = model.Municipio,
        //             Barrio = model.Barrio,
        //             Direccion = model.Direccion,
        //             Pregunta_Secreta = model.Pregunta_Secreta,
        //             Respuesta_Secreta = model.Respuesta_Secreta,
        //             Auth_Correo = model.Auth_Correo,
        //             Auth_Celular = model.Auth_Celular
               

        //         };
        //         var result = await _userManager.CreateAsync(user, model.Contrasena);
        //         if (result.Succeeded)
        //         {
        //             await _signInManager.SignInAsync(user, isPersistent: false);

        //             return RedirectToAction("Index", "Home");
        //         }
             
        //         foreach (var error in result.Errors)
        //         {
        //             ModelState.AddModelError(string.Empty, error.Description);
        //         }
        //     }

      
        //     return View(model);
        // }
    }

}
