using Common;
using Common.api;
using Common.model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Clients
{
    public class ServiceEngine
    {
        #region Singleton
        private static ServiceEngine instance;
        private HttpClient httpClient;

        public static ServiceEngine Instance
        {
            get
            {
                if (instance == null)
                    instance = new ServiceEngine();
                return instance;
            }
        }

        private ServiceEngine()
        {
            this.httpClient = new HttpClient();
        }
        #endregion

        public List<Book> GetBooks()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_BOOKS).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<List<Book>>(jsonString);
            }
            else
                return null;
        }

        public List<Stock> GetStock()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_STOCK).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<List<Stock>>(jsonString);
            }
            else
                return null;
        }

        public List<IncomingStock> GetIncomingStock()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_STOCK_INCOMING).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<List<IncomingStock>>(jsonString);
            }
            else
                return null;
        }

        public List<StoreBookOrder> GetOrders()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_ORDERS).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                var jsonObject = JsonConvert.DeserializeObject<JObject>(jsonString);
                jsonObject.GetValue("orders").ToObject(typeof(List<StoreBookOrder>));
                return JsonConvert.DeserializeObject<List<StoreBookOrder>>(jsonObject.GetValue("orders").ToString());
            }
            else
                return null;
        }

        public bool AcceptIncomingStock(Guid id)
        {
            HttpResponseMessage response = httpClient.PostAsync(APIConstants.BOOKSTORE_STOCK_INCOMING + id + "/accept", null).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
