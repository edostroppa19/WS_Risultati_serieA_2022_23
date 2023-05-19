using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace TodoApi.Models
{

    [Table("giornate", Schema = "tps")]
    public class giornate
    { 
            public int id { get; set; }
            public string? campionati { get; set; }
            public string? Numero_giornata { get; set; }
            public string? squadra_di_casa { get; set; }
            public string? gol_squadra_casa { get; set; }
            public string? gol_squadra_ospiti { get; set; }
            public string? squadra_ospite { get; set; }

    }
}
