using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AlqudsProject.Data;
using AlqudsProject.Models;

namespace AlqudsProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ManhajsController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public ManhajsController(Alquds_CenterContext context)
        {
            _context = context;
        }

        // GET: Manhajs
        public async Task<IActionResult> Index()
        {
              return _context.Manhajs != null ? 
                          View(await _context.Manhajs.ToListAsync()) :
                          Problem("Entity set 'Alquds_CenterContext.Manhajs'  is null.");
        }

        // GET: Manhajs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Manhajs == null)
            {
                return NotFound();
            }

            var manhaj = await _context.Manhajs
                .FirstOrDefaultAsync(m => m.ManhajId == id);
            if (manhaj == null)
            {
                return NotFound();
            }

            return View(manhaj);
        }

        // GET: Manhajs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Manhajs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ManhajId,Name,Url,Picture")] Manhaj manhaj)
        {
            if (ModelState.IsValid)
            {
                _context.Add(manhaj);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(manhaj);
        }

        // GET: Manhajs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Manhajs == null)
            {
                return NotFound();
            }

            var manhaj = await _context.Manhajs.FindAsync(id);
            if (manhaj == null)
            {
                return NotFound();
            }
            return View(manhaj);
        }

        // POST: Manhajs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ManhajId,Name,Url,Picture")] Manhaj manhaj)
        {
            if (id != manhaj.ManhajId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(manhaj);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ManhajExists(manhaj.ManhajId))
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
            return View(manhaj);
        }

        // GET: Manhajs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Manhajs == null)
            {
                return NotFound();
            }

            var manhaj = await _context.Manhajs
                .FirstOrDefaultAsync(m => m.ManhajId == id);
            if (manhaj == null)
            {
                return NotFound();
            }

            return View(manhaj);
        }

        // POST: Manhajs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Manhajs == null)
            {
                return Problem("Entity set 'Alquds_CenterContext.Manhajs'  is null.");
            }
            var manhaj = await _context.Manhajs.FindAsync(id);
            if (manhaj != null)
            {
                _context.Manhajs.Remove(manhaj);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ManhajExists(int id)
        {
          return (_context.Manhajs?.Any(e => e.ManhajId == id)).GetValueOrDefault();
        }
    }
}
