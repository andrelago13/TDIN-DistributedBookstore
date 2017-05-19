using Clients.ModelView;
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
            BooksViewModel.Instance.RefreshBooks();
            this.BooksViewModelBindingSource.Add(BooksViewModel.Instance);

            // Stock View
            StockViewModel.Instance.Controller = this;
            StockViewModel.Instance.RefreshStocks();
            this.StockViewModelBindingSource.Add(StockViewModel.Instance);

            var materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.DARK;
            materialSkinManager.ColorScheme = new ColorScheme(Primary.BlueGrey800, Primary.BlueGrey900, Primary.BlueGrey500, Accent.LightBlue200, TextShade.WHITE);
        }
    }
}
