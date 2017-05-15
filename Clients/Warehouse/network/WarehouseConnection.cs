using Common.model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Warehouse.network
{
    public class WarehouseConnection
    {
        public static List<BookOrder> getOrders()
        {
            string json = "{\"orders\":[{\"quantity\":10,\"orderID\":\"3c759575-7d2f-495d-93c8-6c3e04418eb0\",\"clientName\":\"Antonio\",\"clientEmail\":\"x@x.com\",\"state\":0,\"stateDate\":null,\"clientAddress\":\"Rua X1\",\"bookTitle\":\"Titulo 1\"},{\"quantity\":15,\"orderID\":\"cfe42f04-71e3-48b1-bb02-ce2b283c0aa9\",\"clientName\":\"To\",\"clientEmail\":\"y@y.com\",\"state\":1,\"stateDate\":20000,\"clientAddress\":\"Rua Y2\",\"bookTitle\":\"Titulo 2\"}]}";

            //BookOrderList order = JsonConvert.DeserializeObject<BookOrderList>(json);
            JObject obj = JObject.Parse(json);
            JArray orders = (JArray) obj["orders"];

            List<BookOrder> result = new List<BookOrder>();

            for(int i = 0; i < orders.Count; ++i)
            {
                JObject var = (JObject) orders[i];
                int test = (int) var.GetValue("quantity");
            }

            return result;
        }
    }
}
