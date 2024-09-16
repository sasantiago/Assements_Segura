using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SEGURA_ASSETMENTS.Data;

public class  ClienteController: Controller
{
    private readonly SEGURA_ASSETMENTSContext _context;

    public ClienteController(SEGURA_ASSETMENTSContext context)
    {
        _context = context;
    }

    // Acción para ver la lista de clientes
    public async Task<IActionResult> Index()
    {
        return View(await _context.AspNetUsers.ToListAsync());
    }
    // Acción para ver la lista de reservas
     public async Task<IActionResult> MisReservas(int userId)
    {
        // var reservas = await _context.Reservas
        //     .Where(r => r.ID_Cliente == userId)
        //     .ToListAsync();
        // return View(reservas);
        return View();
    }
}
