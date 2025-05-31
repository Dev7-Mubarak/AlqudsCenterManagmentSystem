using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AlqudsProject.Data;
using AlqudsProject.Models;

namespace AlqudsProject.Controllers
{
    public class MemorizationPathsController : Controller
    {
        private readonly Alquds_CenterContext _context;

        public MemorizationPathsController(Alquds_CenterContext context)
        {
            _context = context;
        }

        // GET: MemorizationPaths
        public async Task<IActionResult> Index()
        {
              return _context.MemorizationPath != null ? 
                          View(await _context.MemorizationPath.ToListAsync()) :
                          Problem("Entity set 'Alquds_CenterContext.MemorizationPath'  is null.");
        }

        // GET: MemorizationPaths/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.MemorizationPath == null)
            {
                return NotFound();
            }

            var memorizationPath = await _context.MemorizationPath
                .FirstOrDefaultAsync(m => m.PathId == id);
            if (memorizationPath == null)
            {
                return NotFound();
            }

            return View(memorizationPath);
        }

        // GET: MemorizationPaths/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: MemorizationPaths/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PathId,MemorizeFrom,MemorizeTo,Name")] MemorizationPath memorizationPath)
        {
            if (ModelState.IsValid)
            {
                _context.Add(memorizationPath);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(memorizationPath);
        }

        // GET: MemorizationPaths/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.MemorizationPath == null)
            {
                return NotFound();
            }

            var memorizationPath = await _context.MemorizationPath.FindAsync(id);
            if (memorizationPath == null)
            {
                return NotFound();
            }
            return View(memorizationPath);
        }

        // POST: MemorizationPaths/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PathId,MemorizeFrom,MemorizeTo,Name")] MemorizationPath memorizationPath)
        {
            if (id != memorizationPath.PathId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(memorizationPath);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MemorizationPathExists(memorizationPath.PathId))
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
            return View(memorizationPath);
        }

        // GET: MemorizationPaths/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.MemorizationPath == null)
            {
                return NotFound();
            }

            var memorizationPath = await _context.MemorizationPath
                .FirstOrDefaultAsync(m => m.PathId == id);
            if (memorizationPath == null)
            {
                return NotFound();
            }

            return View(memorizationPath);
        }

        // POST: MemorizationPaths/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.MemorizationPath == null)
            {
                return Problem("Entity set 'Alquds_CenterContext.MemorizationPath'  is null.");
            }
            var memorizationPath = await _context.MemorizationPath.FindAsync(id);
            if (memorizationPath != null)
            {
                _context.MemorizationPath.Remove(memorizationPath);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MemorizationPathExists(int id)
        {
          return (_context.MemorizationPath?.Any(e => e.PathId == id)).GetValueOrDefault();
        }
    }
}
