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
    class OrdersViewModel : INotifyPropertyChanged
    {
        #region Singleton
        private static OrdersViewModel instance;
        public Control Controller { get; set; }

        public static OrdersViewModel Instance
        {
            get
            {
                if (instance == null)
                    instance = new OrdersViewModel();
                return instance;
            }
        }

        private OrdersViewModel()
        {
            this._Orders = new SortableBindingList<StoreBookOrder>();
        }
        #endregion

        #region Accessors
        private SortableBindingList<StoreBookOrder> _Orders;
        public SortableBindingList<StoreBookOrder> Orders
        {
            get
            {
                return this._Orders;
            }

            set
            {
                if(this._Orders == value)
                {
                    return;
                }

                this._Orders = value;
                Utils.ControlInvoke(this.Controller, () => this.NotifyPropertyChanged(nameof(Orders)));
            }
        }
        #endregion

        #region Methods
        public void Refresh()
        {
            this.Orders = ServiceEngine.Instance.GetOrders();
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
