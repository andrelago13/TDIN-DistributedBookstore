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
    class StockViewModel : INotifyPropertyChanged
    {
        #region Singleton
        private static StockViewModel instance;
        public Control Controller { get; set; }

        public static StockViewModel Instance
        {
            get
            {
                if (instance == null)
                    instance = new StockViewModel();
                return instance;
            }
        }

        private StockViewModel()
        {
            this._Stock = new SortableBindingList<Stock>();
            this._IncomingStock = new SortableBindingList<IncomingStock>();
        }
        #endregion

        #region Accessors
        private SortableBindingList<Stock> _Stock;
        public SortableBindingList<Stock> Stock
        {
            get
            {
                return this._Stock;
            }

            set
            {
                if(this._Stock == value)
                {
                    return;
                }

                this._Stock = value;
                Utils.ControlInvoke(this.Controller, () => this.NotifyPropertyChanged(nameof(Stock)));
            }
        }

        private SortableBindingList<IncomingStock> _IncomingStock;
        public SortableBindingList<IncomingStock> IncomingStock
        {
            get
            {
                return this._IncomingStock;
            }

            set
            {
                if (this._IncomingStock == value)
                {
                    return;
                }

                this._IncomingStock = value;
                Utils.ControlInvoke(this.Controller, () => this.NotifyPropertyChanged(nameof(IncomingStock)));
            }
        }
        #endregion

        #region Methods
        public void Refresh()
        {
            this.Stock = ServiceEngine.Instance.GetStock();
            this.IncomingStock = ServiceEngine.Instance.GetIncomingStock(); // TODO: Hide accept button
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
