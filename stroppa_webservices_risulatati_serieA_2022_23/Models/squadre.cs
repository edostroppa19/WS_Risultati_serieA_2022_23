using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace todoapi_v00.Models
{
    [Table("squadre", Schema = "tps")]
    public class squadre
    {
        public int id { get; set; }
        public string? nome_squadra { get; set; }
        public string? nazione_squadra { get; set; }
        public string? campionato_squadra { get; set; }
        public string? giornata { get; set; }
        public string? vittorie { get; set; }
        public string? pareggi { get; set; }
        public string? sconfitte { get; set; }
        public string? Goal_fatti { get; set; }
        public string? Goal_subiti { get; set; }
    }
}


