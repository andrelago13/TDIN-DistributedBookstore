using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common.model;
using System.Windows.Forms;
using Common;

namespace Clients.ModelView
{
    class BooksViewModel : INotifyPropertyChanged
    {
        #region Singleton
        private static BooksViewModel instance;
        public Control Controller { get; set; }

        public static BooksViewModel Instance
        {
            get
            {
                if (instance == null)
                    instance = new BooksViewModel();
                return instance;
            }
        }

        private BooksViewModel()
        {
            this._Books = new SortableBindingList<Book>();
        }
        #endregion

        #region Accessors
        private SortableBindingList<Book> _Books;
        public SortableBindingList<Book> Books
        {
            get
            {
                return this._Books;
            }

            set
            {
                if(this._Books == value)
                {
                    return;
                }

                this._Books = value;
                Utils.ControlInvoke(this.Controller, () => this.NotifyPropertyChanged(nameof(Books)));
            }
        }
        #endregion

        #region Methods
        public void Refresh()
        {
            this.Books = ServiceEngine.Instance.GetBooks();
        }
        #endregion

        #region Property Change

        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged(String info)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info));
            }
        }

        #endregion
    }
}
