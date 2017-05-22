using Clients.ModelView;
using Common;
using Common.model;
using MaterialSkin;
using MaterialSkin.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Clients
{
    public partial class MainForm : MaterialForm
    {
        public MainForm()
        {
            InitializeComponent();

            // Books View
            BooksViewModel.Instance.Controller = this;
            this.BooksViewModelBindingSource.Add(BooksViewModel.Instance);

            // Orders View
            OrdersViewModel.Instance.Controller = this;
            this.OrdersViewModelBindingSource.Add(OrdersViewModel.Instance);

            // Stock View
            StockViewModel.Instance.Controller = this;
            this.StockViewModelBindingSource.Add(StockViewModel.Instance);

            var materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.DARK;
            materialSkinManager.ColorScheme = new ColorScheme(Primary.BlueGrey800, Primary.BlueGrey900, Primary.BlueGrey500, Accent.LightBlue200, TextShade.WHITE);

            this.RefreshAll();
        }

        private void RefreshAll()
        {
            BooksViewModel.Instance.Refresh();
            OrdersViewModel.Instance.Refresh();
            StockViewModel.Instance.Refresh();
        }

        private void RefreshButtonClick(object sender, MouseEventArgs e)
        {
            Task.Run(() => this.RefreshAll());
        }

        private void CreateOrderClick(object sender, MouseEventArgs e)
        {
            StoreBookOrder order = new StoreBookOrder();
            order.UserID = 0;
            order.OrderDate = DateTime.Now;
            order.BookID = BookIDField.Text;
            order.Quantity = int.Parse(QuantityField.Text);
            order.TotalPrice = double.Parse(TotalPriceField.Text);
            order.ClientName = ClientNameField.Text;
            order.ClientAddress = ClientAddressField.Text;
            order.ClientEmail = ClientEmailField.Text;

            if(ServiceEngine.Instance.CreateOrder(order))
            {
                BookIDField.Text = "";
                QuantityField.Text = "";
                TotalPriceField.Text = "";
                ClientNameField.Text = "";
                ClientAddressField.Text = "";
                ClientEmailField.Text = "";
                this.RefreshAll();
            } else
            {
                ClientNameField.Text = "Error creating the order...";
            }
        }

        private void RemoveAcceptButton(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DateTime currentDate = DateTime.Now.Date;
            foreach (DataGridViewRow row in IncomingStockList.Rows) {
                DataGridViewCell cell = row.Cells[3];
                DateTime dispatchedDate = Convert.ToDateTime(cell.Value);
                if (dispatchedDate != null && dispatchedDate.AddDays(2) <= currentDate)
                    continue;

                row.Cells[4] = new DataGridViewTextBoxCell();
            }
        }

        private void AcceptIncomingStock(object sender, DataGridViewCellEventArgs e)
        {
            var senderGrid = (DataGridView)sender;

            if (!(senderGrid.Columns[e.ColumnIndex] is DataGridViewButtonColumn))
                return;

            Guid id = (Guid)senderGrid.Rows[e.RowIndex].Cells[1].Value;
            if(ServiceEngine.Instance.AcceptIncomingStock(id))
            {
                this.RefreshAll();
            }
        }
    }
}
