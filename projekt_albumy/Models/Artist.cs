using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace projekt_albumy.Models
{
    public partial class Artist
    {
        
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Column("BandsId")]
        public int BandId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }

        public virtual Band Bands { get; set; }
    }
}
