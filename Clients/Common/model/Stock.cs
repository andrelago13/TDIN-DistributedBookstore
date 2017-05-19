using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class Stock
    {
        [JsonProperty("bookID")]
        public int ID { get; set; }

        [JsonProperty("quantity")]
        public int Quantity { get; set; }
    }
}
