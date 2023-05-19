using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoApi.Models;
namespace todoapi_v00.Controllers
{

    [ApiController]
    [Route("[controller]")]
    public class giornateController : ControllerBase
    {
        private readonly giornateContext _context;

        public giornateController(giornateContext context)
        {
            _context = context;

        }
    
        // GET: api/ListMembership
        [HttpGet]
        public async Task<ActionResult<IEnumerable<giornate>>> Getgiornate([FromQuery] int id, string? campionati, string? Numero_giornata, string? squadra_di_casa, string? gol_squadra_casa, string? gol_squadra_ospiti, string? squadra_ospite)
        {
         
            var queryable = _context.giornate.AsQueryable();
          /*  if (!string.IsNullOrEmpty(id.ToString()) && !string.IsNullOrEmpty(id.ToString()))
            {
                queryable = queryable.Where(x => x.id == id);
                return await queryable.Where(x => x.id == id).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(id.ToString()))
            {
                return await queryable.Where(x => x.id == id).ToListAsync();
            }*/
            if (!string.IsNullOrEmpty(campionati) )
            {
                queryable = queryable.Where(x => x.campionati == campionati);
                return await queryable.Where(x => x.campionati == campionati).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(campionati))
            {
                return await queryable.Where(x => x.campionati == campionati).ToListAsync();
            }

            if (!string.IsNullOrEmpty(Numero_giornata))
            {
                queryable = queryable.Where(x => x.Numero_giornata == Numero_giornata);
                return await queryable.Where(x => x.Numero_giornata == Numero_giornata).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(Numero_giornata))
            {
                return await queryable.Where(x => x.Numero_giornata == Numero_giornata).ToListAsync();
            }
           
            if (!string.IsNullOrEmpty(squadra_di_casa) )
            {
                queryable = queryable.Where(x => x.squadra_di_casa == squadra_di_casa);
                return await queryable.Where(x => x.squadra_di_casa == squadra_di_casa).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(squadra_di_casa))
            {
                return await queryable.Where(x => x.squadra_di_casa == squadra_di_casa).ToListAsync();
            }

            if (!string.IsNullOrEmpty(gol_squadra_casa))
            {
                queryable = queryable.Where(x => x.gol_squadra_casa == gol_squadra_casa);
                return await queryable.Where(x => x.gol_squadra_casa == gol_squadra_casa).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(gol_squadra_casa))
            {
                return await queryable.Where(x => x.gol_squadra_casa == gol_squadra_casa).ToListAsync();
            }

            if (!string.IsNullOrEmpty(gol_squadra_ospiti) )
            {
                queryable = queryable.Where(x => x.gol_squadra_ospiti == gol_squadra_ospiti);
                return await queryable.Where(x => x.gol_squadra_ospiti == gol_squadra_ospiti).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(gol_squadra_ospiti))
            {
                return await queryable.Where(x => x.gol_squadra_ospiti == gol_squadra_ospiti).ToListAsync();
            }
            if (!string.IsNullOrEmpty(squadra_ospite))
            {
                queryable = queryable.Where(x => x.squadra_ospite == squadra_ospite);
                return await queryable.Where(x => x.squadra_ospite == squadra_ospite).ToListAsync();
            }
            else if (!string.IsNullOrEmpty(squadra_ospite))
            {
                return await queryable.Where(x => x.squadra_ospite == squadra_ospite).ToListAsync();
            }
            
            return await _context.giornate.ToListAsync();
        }

        // GET: api/ListMembership/5
        [HttpGet("{id}")]
        public async Task<ActionResult<giornate>> Getgiornate(int id)
        {
            var giornate = await _context.giornate.FindAsync(id);

            if (giornate == null)
            {
                return NotFound();
            }

            return giornate;
        }

        // GET: api/ListMembership/{id}/User

        // POST: api/ListMembership
        [HttpPost]
        public async Task<ActionResult<giornate>> Postgiornate(giornate item)
        {
            _context.giornate.Add(item);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(Getgiornate), new { id = item.id }, item);
        }

        // PUT: api/ListMembership/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Putgiornate(int id, giornate item)
        {
            if (id != item.id)
            {
                return BadRequest();
            }

            _context.Entry(item).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE: api/ListMembership/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Deletegiornate(int id)
        {
            var giornate = await _context.giornate.FindAsync(id);

            if (giornate == null)
            {
                return NotFound();
            }

            _context.giornate.Remove(giornate);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}