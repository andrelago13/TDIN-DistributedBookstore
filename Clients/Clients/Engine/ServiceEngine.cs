using Clients.Engine;
using Common;
using Common.api;
using Common.model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Globalization;
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

        public SortableBindingList<Book> GetBooks()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_BOOKS).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<SortableBindingList<Book>>(jsonString);
            }
            else
                return null;
        }

        public SortableBindingList<Stock> GetStock()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_STOCK).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<SortableBindingList<Stock>>(jsonString);
            }
            else
                return null;
        }

        public SortableBindingList<IncomingStock> GetIncomingStock()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_STOCK_INCOMING).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                return JsonConvert.DeserializeObject<SortableBindingList<IncomingStock>>(jsonString);
            }
            else
                return null;
        }

        public SortableBindingList<StoreBookOrder> GetOrders()
        {
            HttpResponseMessage response = httpClient.GetAsync(APIConstants.BOOKSTORE_ORDERS).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsonString = response.Content.ReadAsStringAsync().Result;
                var jsonObject = JsonConvert.DeserializeObject<JObject>(jsonString);
                jsonObject.GetValue("orders").ToObject(typeof(List<StoreBookOrder>));
                return JsonConvert.DeserializeObject<SortableBindingList<StoreBookOrder>>(jsonObject.GetValue("orders").ToString());
            }
            else
                return null;
        }

        public bool CreateOrder(StoreBookOrder order)
        {
            var keyValues = new List<KeyValuePair<string, string>>();
            keyValues.Add(new KeyValuePair<string, string>("bookID", order.BookID));
            keyValues.Add(new KeyValuePair<string, string>("userID", order.UserID.ToString()));
            keyValues.Add(new KeyValuePair<string, string>("quantity", order.Quantity.ToString()));
            keyValues.Add(new KeyValuePair<string, string>("totalPrice", order.TotalPrice.ToString(CultureInfo.InvariantCulture)));
            keyValues.Add(new KeyValuePair<string, string>("clientName", order.ClientName));
            keyValues.Add(new KeyValuePair<string, string>("clientAddress", order.ClientAddress));
            keyValues.Add(new KeyValuePair<string, string>("clientEmail", order.ClientEmail));


            HttpResponseMessage response = httpClient.PostAsync(APIConstants.BOOKSTORE_ORDERS, new FormUrlEncodedContent(keyValues)).Result;
            if (response.IsSuccessStatusCode)
            {
                order.OrderID = response.Headers.Location.Segments.Last();
                string filePath = PDFEngine.Instance.CreateOrderPDF(order);
                System.Diagnostics.Process.Start(@filePath);
                return true;
            }
            else
            {
                return false;
            }
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
