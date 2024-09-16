using Microsoft.AspNetCore.Mvc;
using SEGURA_ASSETMENTS.Data;
using System.Collections.Generic;
using System.Linq;

public class SedesController : Controller
{
    private readonly SEGURA_ASSETMENTSContext _context;

    public SedesController(SEGURA_ASSETMENTSContext context)
    {
        _context = context;
    }
    
   
  

    public IActionResult Index()
    {
        var sede= _context.Sedes.ToList();
       
        return View(sede); 
    }
    public IActionResult Fechas(int? id)
    {
        return View();
    }
}
