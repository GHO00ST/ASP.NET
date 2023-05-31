using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using projekt_albumy.Data;
using projekt_albumy.Models;

namespace projekt_albumy.Controllers
{
    public class MusicTypesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public MusicTypesController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Authorize(Roles = "Moderator, Admin, SuperAdmin")]

        // GET: MusicTypes
        public async Task<IActionResult> Index()
        {
            return View(await _context.MusicTypes.ToListAsync());
        }

        // GET: MusicTypes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var musicType = await _context.MusicTypes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (musicType == null)
            {
                return NotFound();
            }

            return View(musicType);
        }

        // GET: MusicTypes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: MusicTypes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name")] MusicType musicType)
        {
            if (ModelState.IsValid)
            {
                _context.Add(musicType);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(musicType);
        }

        // GET: MusicTypes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var musicType = await _context.MusicTypes.FindAsync(id);
            if (musicType == null)
            {
                return NotFound();
            }
            return View(musicType);
        }

        // POST: MusicTypes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name")] MusicType musicType)
        {
            if (id != musicType.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(musicType);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MusicTypeExists(musicType.Id))
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
            return View(musicType);
        }

        // GET: MusicTypes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var musicType = await _context.MusicTypes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (musicType == null)
            {
                return NotFound();
            }

            return View(musicType);
        }

        // POST: MusicTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var musicType = await _context.MusicTypes.FindAsync(id);
            _context.MusicTypes.Remove(musicType);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MusicTypeExists(int id)
        {
            return _context.MusicTypes.Any(e => e.Id == id);
        }
    }
}
