using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TodoApi.Models
{
    public class giornateContext : DbContext
    {
        public giornateContext(DbContextOptions<giornateContext> options)
            : base(options)
        {
        }

        public DbSet<giornate> giornate { get; set; }
    }
}
