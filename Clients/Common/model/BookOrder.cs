using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    public class BookOrder
    {
        public int orderID { get; set; }

        public string bookTitle { get; set; }

        public int quantity { get; set; }

        public string clientName { get; set; }

        public string clientAddress { get; set; }

        public string clientEmail { get; set; }
        
        public State state { get; set; }

        public long stateDate { get; set; }

        public BookOrder() { }

        public BookOrder(int id, string title, int quantity, string client_name, string client_addr, string client_email, int state, long state_date)
        {
            orderID = id;
            bookTitle = title;
            this.quantity = quantity;
            clientName = client_name;
            clientAddress = client_addr;
            clientEmail = client_email;
            switch (state)
            {
                case 0:
                    this.state = State.AWAITING_EXPEDITION;
                    break;
                case 1:
                    this.state = State.WILL_BE_DISPATCHED;
                    stateDate = state_date;
                    break;
                case 2:
                    this.state = State.DISPATCHED;
                    stateDate = state_date;
                    break;
            }
        }

        public BookOrder(int id, string title, int quantity, string client_name, string client_addr, string client_email) : 
            this(id, title, quantity, client_name, client_addr, client_email, 0, -1) { }

        public BookOrder(JObject json)
        {

        }
    }

    public enum State
    {
        AWAITING_EXPEDITION,
        WILL_BE_DISPATCHED,
        DISPATCHED
    }
}
