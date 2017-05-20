using Common.model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public class StoreBookOrder : BookOrder
    {
        [JsonProperty("totalPrice")]
        public double TotalPrice { get; set; }

        [JsonProperty("clientName")]
        public string ClientName { get; set; }

        [JsonProperty("clientAddress")]
        public string ClientAddress { get; set; }

        [JsonProperty("clientEmail")]
        public string ClientEmail { get; set; }

        [JsonProperty("userID")]
        public int UserID { get; set; }
    }
}
