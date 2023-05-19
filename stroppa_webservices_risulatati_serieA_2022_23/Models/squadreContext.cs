using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using todoapi_v00.Models;

namespace TodoApi.Models
{
    public class squadreContext: DbContext
    {
        public squadreContext(DbContextOptions<squadreContext> options)
           : base(options)
        {
        }
        public DbSet<squadre> squadre { get; set; }
    }
}

