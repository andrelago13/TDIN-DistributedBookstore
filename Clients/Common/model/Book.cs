using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class Book
    {
        [JsonProperty("ID")]
        public int ID { get; set; }

        [JsonProperty("ISBN")]
        public String ISBN { get; set; }

        [JsonProperty("name")]
        public String Title { get; set; }

        [JsonProperty("author")]
        public String Author { get; set; }

        [JsonProperty("price")]
        public Double Price { get; set; }
    }
}
