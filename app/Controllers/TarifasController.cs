using Microsoft.AspNetCore.Mvc;
using SEGURA_ASSETMENTS.Data;
using SEGURA_ASSETMENTS.Models;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace SEGURA_ASSETMENTS.Controllers
{
    public class TarifasController : Controller
    {
        private readonly SEGURA_ASSETMENTSContext _context;

        public TarifasController(SEGURA_ASSETMENTSContext context)
        {
            _context = context;
        }

      
        public async Task<IActionResult> Tarifas()
        {
            return View(await _context.Tarifas.ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Id_Sede,Numero_Personas,Numero_Habitaciones,Tipo_Alojamiento,Tarifa")] Tarifa tarifa)
        {
            if (ModelState.IsValid)
            {
                _context.Add(tarifa);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(tarifa);
        }

        // GET: Tarifa/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tarifa = await _context.Tarifas.FindAsync(id);
            if (tarifa == null)
            {
                return NotFound();
            }
            return View(tarifa);
        }

        // POST: Tarifa/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Id_Sede,Numero_Personas,Numero_Habitaciones,Tipo_Alojamiento,Tarifa")] Tarifa tarifa)
        {
            if (id != tarifa.ID_Tarifa)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(tarifa);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TarifaExists(tarifa.ID_Tarifa))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(tarifa);
        }

        // GET: Tarifa/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tarifa = await _context.Tarifas
                .FirstOrDefaultAsync(m => m.ID_Tarifa == id);
            if (tarifa == null)
            {
                return NotFound();
            }

            return View(tarifa);
        }

        // POST: Tarifa/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var tarifa = await _context.Tarifas.FindAsync(id);
            _context.Tarifas.Remove(tarifa);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TarifaExists(int id)
        {
            return _context.Tarifas.Any(e => e.ID_Tarifa == id);
        }
    }
}
