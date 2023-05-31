using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace projekt_albumy.Models
{
    public partial class Album
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime Year { get; set; }

        [Column ("BandsId")]
        public int BandId { get; set; }

        [Column ("MusicTypesId")]
        public int MusicTypeId { get; set; }

        public virtual Band Band { get; set; }
        public virtual MusicType MusicType { get; set; }
    }
}
