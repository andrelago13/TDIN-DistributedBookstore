using Common.api;
using Common.model;
using Newtonsoft.Json;
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
    }
}
