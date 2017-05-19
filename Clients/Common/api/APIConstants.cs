using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.api
{
    public class APIConstants
    {
        public static readonly string BASE_URL = "http://localhost:8080/";

        public static readonly string BOOKSTORE_PATH = BASE_URL + "bookstore/";
        public static readonly string BOOKSTORE_BOOKS = BOOKSTORE_PATH + "books/";
        public static readonly string BOOKSTORE_STOCK = BOOKSTORE_PATH + "stock/";
        public static readonly string BOOKSTORE_STOCK_INCOMING = BOOKSTORE_STOCK + "incoming/";
        public static readonly string BOOKSTORE_ORDERS = BOOKSTORE_PATH + "orders/";
        public static readonly string BOOKSTORE_ORDERS_PENDING = BOOKSTORE_ORDERS + "pending/";
        public static readonly string BOOKSTORE_USERS = BOOKSTORE_PATH + "users/";

        public static readonly string WAREHOUSE_PATH = BASE_URL + "warehouse/";
        public static readonly string WAREHOUSE_ORDERS_PATH = WAREHOUSE_PATH + "orders/";
        public static readonly string WAREHOUSE_ORDERS_UPDATE_PATH = WAREHOUSE_ORDERS_PATH + "update/";
    }
}
