using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class BookOrder
    {
        [JsonProperty("orderID")]
        public string OrderID { get; set; }

        [JsonProperty("bookID")]
        public string BookID { get; set; }

        [JsonProperty("quantity")]
        public int Quantity { get; set; }

        [JsonProperty("orderDate")]
        public DateTime OrderDate { get; set; }

        [JsonProperty("state")]
        public State OrderState { get; set; }

        [JsonProperty("dispatchDate")]
        public DateTime? DispatchDate { get; set; }

        public BookOrder() { }

        public BookOrder(string id, string title, int quantity, int state, DateTime dispatchDate)
        {
            OrderID = id;
            BookID = title;
            Quantity = quantity;
            switch (state)
            {
                case 0:
                    OrderState = State.AWAITING_EXPEDITION;
                    break;
                case 1:
                    OrderState = State.WILL_BE_DISPATCHED;
                    break;
                case 2:
                    OrderState = State.DISPATCHED;
                    break;
            }
            DispatchDate = dispatchDate;
        }

        public BookOrder(string id, string title, int quantity, string clientEmail) : 
            this(id, title, quantity, 0, new DateTime()) { }

        public BookOrder(JObject json)
        {
            OrderID = (string) json.GetValue("orderID");
            BookID = (string) json.GetValue("bookID");
            Quantity = (int) json.GetValue("quantity");
            switch ((int) json.GetValue("state"))
            {
                case 0:
                    OrderState = State.AWAITING_EXPEDITION;
                    break;
                case 1:
                    OrderState = State.WILL_BE_DISPATCHED;
                    break;
                case 2:
                    OrderState = State.DISPATCHED;
                    break;
            }
            DispatchDate = DateTime.Parse((string)json.GetValue("dispatchDate")); ;
        }

        private static DateTime DateFromLong(long value)
        {
            long beginTicks = new DateTime(1970, 1, 2, 0, 0, 0, DateTimeKind.Utc).Ticks;
            return new DateTime(beginTicks + value * 10000, DateTimeKind.Utc).Date;
        }
    }

    public enum State
    {
        AWAITING_EXPEDITION,
        WILL_BE_DISPATCHED,
        DISPATCHED
    }
}
