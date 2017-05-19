using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.model
{
    class Book
    {
        public int ID { get; set; }

        public String ISBN { get; set; }

        public String Title { get; set; }

        public String Author { get; set; }

        public Double Price { get; set; }

        public Book(int ID, String ISBN, String Title, String Author, Double Price)
        {
            this.ID = ID;
            this.ISBN = ISBN;
            this.Title = Title;
            this.Author = Author;
            this.Price = Price;
        }

        public Book(JObject json)
        {
            this.ID = (int)json.GetValue("ID");
            this.ISBN = (string)json.GetValue("ISBN");
            this.Title = (string)json.GetValue("title");
            this.Author = (string)json.GetValue("author");
            this.Price = (double)json.GetValue("price");
        }
    }
}
