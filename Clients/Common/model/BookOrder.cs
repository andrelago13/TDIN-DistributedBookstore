using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class BookOrder
    {
        public string OrderID { get; set; }

        public string BookID { get; set; }

        public int Quantity { get; set; }

        public string ClientName { get; set; }

        public string ClientAddress { get; set; }

        public string ClientEmail { get; set; }
        
        public State OrderState { get; set; }

        public DateTime StateDate { get; set; }

        public BookOrder() { }

        public BookOrder(string id, string title, int quantity, string client_name, string client_addr, string client_email, int state, DateTime state_date)
        {
            OrderID = id;
            BookID = title;
            Quantity = quantity;
            ClientName = client_name;
            ClientAddress = client_addr;
            ClientEmail = client_email;
            switch (state)
            {
                case 0:
                    OrderState = State.AWAITING_EXPEDITION;
                    break;
                case 1:
                    OrderState = State.WILL_BE_DISPATCHED;
                    StateDate = state_date;
                    break;
                case 2:
                    OrderState = State.DISPATCHED;
                    StateDate = state_date;
                    break;
            }
        }

        public BookOrder(string id, string title, int quantity, string client_name, string client_addr, string client_email) : 
            this(id, title, quantity, client_name, client_addr, client_email, 0, new DateTime()) { }

        public BookOrder(JObject json)
        {
            OrderID = (string) json.GetValue("orderID");
            BookID = (string) json.GetValue("bookID");
            Quantity = (int) json.GetValue("quantity");
            ClientName = (string) json.GetValue("clientName");
            ClientAddress = (string) json.GetValue("clientAddress");
            ClientEmail = (string) json.GetValue("clientEmail");
            switch ((int) json.GetValue("state"))
            {
                case 0:
                    OrderState = State.AWAITING_EXPEDITION;
                    break;
                case 1:
                    OrderState = State.WILL_BE_DISPATCHED;
                    string test = (string)json.GetValue("stateDate");
                    StateDate = DateFromLong((long) json.GetValue("stateDate"));
                    break;
                case 2:
                    OrderState = State.DISPATCHED;
                    StateDate = DateFromLong((long)json.GetValue("stateDate"));
                    break;
            }
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
