using Common.api;
using Common.model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Warehouse.network
{
    public class WarehouseConnection
    {
        private static readonly HttpClient client = new HttpClient();

        public static List<BookOrder> GetOrders()
        {
            string json = GetOrdersJSON(); ;

            JObject obj = JObject.Parse(json);
            JArray orders = (JArray)obj["orders"];

            List<BookOrder> result = new List<BookOrder>();

            for (int i = 0; i < orders.Count; ++i)
            {
                result.Add(new BookOrder((JObject)orders[i]));
            }

            return result;
        }

        public static async Task<bool> UpdateOrderAsync(string id)
        {
            var values = new Dictionary<string, string> {
                { "id", id }
            };

            await API_Post(APIConstants.WAREHOUSE_ORDERS_UPDATE_PATH, values);

            return true;
        }

        private static string GetOrdersJSON()
        {
            return API_Get(APIConstants.WAREHOUSE_ORDERS_PATH);
        }

        private static string API_Get(string url)
        {
            string s = "";

            using (WebClient client = new WebClient())
            {
                s = client.DownloadString(url);
            }

            return s;
        }

        private static async Task<string> API_Post(string url, Dictionary<string, string> values)
        {
            var content = new FormUrlEncodedContent(values);
            var response = await client.PostAsync(url, content);

            return await response.Content.ReadAsStringAsync();
        }
    }
}
