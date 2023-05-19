using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoApi.Models;
using todoapi_v00.Models;

namespace todoapi_v00.Controllers
{
  
        [ApiController]
        [Route("[controller]")]
        public class squadreController : ControllerBase
        {
            private readonly squadreContext _context;

            public squadreController(squadreContext context)
            {
                _context = context;

            }


            // GET: api/ListMembership
            [HttpGet]
            public async Task<ActionResult<IEnumerable<squadre>>> Getsquadre([FromQuery]  string? nome_squadra, string? nazione_squadra, string? campionato_squadra, string? giornata, string? vittorie, string? pareggi, string? sconfitte, string? Goal_fatti, string? Goal_subiti)
            {

                var queryable = _context.squadre.AsQueryable();
                
                if (!string.IsNullOrEmpty(nome_squadra))
                {
                    queryable = queryable.Where(x => x.nome_squadra == nome_squadra);
                    return await queryable.Where(x => x.nome_squadra == nome_squadra).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(nome_squadra))
                {
                    return await queryable.Where(x => x.nome_squadra == nome_squadra).ToListAsync();
                }

                if (!string.IsNullOrEmpty(nazione_squadra))
                {
                    queryable = queryable.Where(x => x.nazione_squadra == nazione_squadra);
                    return await queryable.Where(x => x.nazione_squadra == nazione_squadra).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(nazione_squadra))
                {
                    return await queryable.Where(x => x.nazione_squadra == nazione_squadra).ToListAsync();
                }

                if (!string.IsNullOrEmpty(campionato_squadra))
                {
                    queryable = queryable.Where(x => x.campionato_squadra == campionato_squadra);
                    return await queryable.Where(x => x.campionato_squadra == campionato_squadra).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(campionato_squadra))
                {
                    return await queryable.Where(x => x.campionato_squadra == campionato_squadra).ToListAsync();
                }

                if (!string.IsNullOrEmpty(giornata))
                {
                    queryable = queryable.Where(x => x.giornata == giornata);
                    return await queryable.Where(x => x.giornata == giornata).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(giornata))
                {
                    return await queryable.Where(x => x.giornata == giornata).ToListAsync();
                }

                if (!string.IsNullOrEmpty(vittorie))
                {
                    queryable = queryable.Where(x => x.vittorie == vittorie);
                    return await queryable.Where(x => x.vittorie == vittorie).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(vittorie))
                {
                    return await queryable.Where(x => x.vittorie == vittorie).ToListAsync();
                }
                if (!string.IsNullOrEmpty(pareggi))
                {
                    queryable = queryable.Where(x => x.pareggi == pareggi);
                    return await queryable.Where(x => x.pareggi == pareggi).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(pareggi))
                {
                    return await queryable.Where(x => x.pareggi == pareggi).ToListAsync();
                }
                if (!string.IsNullOrEmpty(sconfitte))
                {
                    queryable = queryable.Where(x => x.sconfitte == sconfitte);
                    return await queryable.Where(x => x.sconfitte == sconfitte).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(sconfitte))
                {
                    return await queryable.Where(x => x.sconfitte == sconfitte).ToListAsync();
                }
                if (!string.IsNullOrEmpty(Goal_fatti))
                {
                    queryable = queryable.Where(x => x.Goal_fatti == Goal_fatti);
                    return await queryable.Where(x => x.Goal_fatti == Goal_fatti).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(Goal_fatti))
                {
                    return await queryable.Where(x => x.Goal_fatti == Goal_fatti).ToListAsync();
                }
                if (!string.IsNullOrEmpty(Goal_subiti))
                {
                    queryable = queryable.Where(x => x.Goal_subiti == Goal_subiti);
                    return await queryable.Where(x => x.Goal_subiti == Goal_subiti).ToListAsync();
                }
                else if (!string.IsNullOrEmpty(Goal_subiti))
                {
                    return await queryable.Where(x => x.Goal_subiti == Goal_subiti).ToListAsync();
                }



                return await _context.squadre.ToListAsync();
            }

            // GET: api/ListMembership/5
            [HttpGet("{id}")]
            public async Task<ActionResult<squadre>> Getsquadre(int id)
            {
                var squadre = await _context.squadre.FindAsync(id);

                if (squadre == null)
                {
                    return NotFound();
                }

                return squadre;
            }

            // GET: api/ListMembership/{id}/User

            // POST: api/ListMembership
            [HttpPost]
            public async Task<ActionResult<squadre>> Postsquadre(squadre item)
            {
                _context.squadre.Add(item);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(Getsquadre), new { id = item.id }, item);
            }

            // PUT: api/ListMembership/5
            [HttpPut("{id}")]
            public async Task<IActionResult> Putsquadre(int id, squadre item)
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
            public async Task<IActionResult> Deletesquadre(int id)
            {
                var squadre = await _context.squadre.FindAsync(id);

                if (squadre == null)
                {
                    return NotFound();
                }

                _context.squadre.Remove(squadre);
                await _context.SaveChangesAsync();

                return NoContent();
            }

        }
    }

