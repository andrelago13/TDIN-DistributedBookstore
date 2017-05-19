using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class IncomingStock : Stock
    {
        [JsonProperty("ID")]
        public Guid OrderID { get; set; }

        [JsonProperty("dispatchDate")]
        public DateTime DispatchDate { get; set; }
    }
}
