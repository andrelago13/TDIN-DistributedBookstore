using Common.model;
using MaterialSkin;
using MaterialSkin.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Warehouse.network;

namespace Warehouse
{
    public partial class MainForm : MaterialForm
    {
        public MainForm()
        {
            InitializeComponent();
            Setup();

            var materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.LIGHT;
            materialSkinManager.ColorScheme = new ColorScheme(Primary.BlueGrey800, Primary.BlueGrey900, Primary.BlueGrey500, Accent.LightBlue200, TextShade.WHITE);
        }

        private void Setup()
        {
            UpdateOrders();
        }

        private async void button1_ClickAsync(object sender, EventArgs e)
        {
            DataGridViewSelectedRowCollection r = pending_grid.SelectedRows;
            for (int i = 0; i < r.Count; ++i)
            {
                string orderID = r[i].Cells[0].Value.ToString();
                await WarehouseConnection.UpdateOrderAsync(orderID);
                UpdateOrders();
            }
        }

        private void UpdateOrders()
        {
            pending_grid.Rows.Clear();
            completed_grid.Rows.Clear();

            List<BookOrder> orders = WarehouseConnection.GetOrders();
            foreach (BookOrder order in orders)
            {
                switch (order.OrderState)
                {
                    case State.AWAITING_EXPEDITION:
                        pending_grid.Rows.Add(order.OrderID, order.BookID, order.Quantity, order.DispatchDate.ToString("dd/MM/yyyy"));
                        break;
                    case State.DISPATCHED:
                        completed_grid.Rows.Add(order.OrderID, order.BookID, order.Quantity, order.DispatchDate.ToString("dd/MM/yyyy"));
                        break;
                }
            }
        }
    }
}
