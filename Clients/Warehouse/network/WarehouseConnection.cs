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
            string json = "{\"orders\":[[{\"quantity\":[10],\"orderID\":[1],\"clientName\":[\"Antonio\"],\"clientEmail\":[\"x@x.com\"],\"state\":[0],\"stateDate\":[null],\"clientAddress\":[\"Rua X1\"],\"bookTitle\":[\"Titulo 1\"]},{\"quantity\":[15],\"orderID\":[2],\"clientName\":[\"To\"],\"clientEmail\":[\"y@y.com\"],\"state\":[1],\"stateDate\":[20000],\"clientAddress\":[\"Rua Y2\"],\"bookTitle\":[\"Titulo 2\"]},{\"quantity\":[7],\"orderID\":[3],\"clientName\":[\"Ze To\"],\"clientEmail\":[\"mailito\"],\"state\":[2],\"stateDate\":[1495017296811],\"clientAddress\":[\"Avenida\"],\"bookTitle\":[\"NewTitulo\"]}]]}";

            //BookOrderList order = JsonConvert.DeserializeObject<BookOrderList>(json);
            JObject obj = JObject.Parse(json);
            JArray orders = (JArray) obj["orders"][0];

            List<BookOrder> result = new List<BookOrder>();

            for(int i = 0; i < orders.len)

            return result;
        }
    }
}
