namespace Clients
{
    partial class MainForm
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle26 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle27 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle28 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle29 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle30 = new System.Windows.Forms.DataGridViewCellStyle();
            this.TabSelector = new MaterialSkin.Controls.MaterialTabSelector();
            this.TabControl = new MaterialSkin.Controls.MaterialTabControl();
            this.booksTab = new System.Windows.Forms.TabPage();
            this.BooksList = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iSBNDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.titleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.authorDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.priceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BooksViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ordersTab = new System.Windows.Forms.TabPage();
            this.CreateOrderButton = new MaterialSkin.Controls.MaterialRaisedButton();
            this.materialSingleLineTextField1 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.ClientEmailLabel = new MaterialSkin.Controls.MaterialLabel();
            this.materialSingleLineTextField2 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.materialSingleLineTextField3 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.ClientAddressLabel = new MaterialSkin.Controls.MaterialLabel();
            this.ClientNameLabel = new MaterialSkin.Controls.MaterialLabel();
            this.TotalPriceField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.TotalPriceLabel = new MaterialSkin.Controls.MaterialLabel();
            this.BookIDField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.OrdersList = new System.Windows.Forms.DataGridView();
            this.orderIDDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bookIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.userIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quantityDataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.totalPriceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clientNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clientAddressDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clientEmailDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.orderStateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dispatchDateDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrdersViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QuantityField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.QuantityLabel = new MaterialSkin.Controls.MaterialLabel();
            this.BookLabel = new MaterialSkin.Controls.MaterialLabel();
            this.stockTab = new System.Windows.Forms.TabPage();
            this.IncomingStockList = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.orderIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quantityDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dispatchDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AcceptColumn = new System.Windows.Forms.DataGridViewButtonColumn();
            this.StockViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.IncomingStockLabel = new MaterialSkin.Controls.MaterialLabel();
            this.StockLabel = new MaterialSkin.Controls.MaterialLabel();
            this.StockList = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quantityDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RefreshButton = new MaterialSkin.Controls.MaterialRaisedButton();
            this.TabControl.SuspendLayout();
            this.booksTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.BooksList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BooksViewModelBindingSource)).BeginInit();
            this.ordersTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersViewModelBindingSource)).BeginInit();
            this.stockTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.IncomingStockList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.StockViewModelBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.StockList)).BeginInit();
            this.SuspendLayout();
            // 
            // TabSelector
            // 
            this.TabSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TabSelector.BaseTabControl = this.TabControl;
            this.TabSelector.Depth = 0;
            this.TabSelector.Location = new System.Drawing.Point(0, 64);
            this.TabSelector.MouseState = MaterialSkin.MouseState.HOVER;
            this.TabSelector.Name = "TabSelector";
            this.TabSelector.Size = new System.Drawing.Size(1027, 47);
            this.TabSelector.TabIndex = 1;
            this.TabSelector.Text = "materialTabSelector1";
            // 
            // TabControl
            // 
            this.TabControl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TabControl.Controls.Add(this.booksTab);
            this.TabControl.Controls.Add(this.ordersTab);
            this.TabControl.Controls.Add(this.stockTab);
            this.TabControl.Depth = 0;
            this.TabControl.Location = new System.Drawing.Point(12, 137);
            this.TabControl.MouseState = MaterialSkin.MouseState.HOVER;
            this.TabControl.Name = "TabControl";
            this.TabControl.SelectedIndex = 0;
            this.TabControl.Size = new System.Drawing.Size(1003, 627);
            this.TabControl.TabIndex = 0;
            // 
            // booksTab
            // 
            this.booksTab.Controls.Add(this.BooksList);
            this.booksTab.Location = new System.Drawing.Point(4, 22);
            this.booksTab.Name = "booksTab";
            this.booksTab.Padding = new System.Windows.Forms.Padding(3);
            this.booksTab.Size = new System.Drawing.Size(995, 601);
            this.booksTab.TabIndex = 2;
            this.booksTab.Text = "Books";
            this.booksTab.UseVisualStyleBackColor = true;
            // 
            // BooksList
            // 
            this.BooksList.AllowUserToAddRows = false;
            this.BooksList.AllowUserToDeleteRows = false;
            this.BooksList.AutoGenerateColumns = false;
            this.BooksList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.BooksList.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.BooksList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.BooksList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.BooksList.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableAlwaysIncludeHeaderText;
            this.BooksList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.BooksList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.BooksList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.iSBNDataGridViewTextBoxColumn,
            this.titleDataGridViewTextBoxColumn,
            this.authorDataGridViewTextBoxColumn,
            this.priceDataGridViewTextBoxColumn});
            this.BooksList.DataMember = "Books";
            this.BooksList.DataSource = this.BooksViewModelBindingSource;
            this.BooksList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.BooksList.EnableHeadersVisualStyles = false;
            this.BooksList.Location = new System.Drawing.Point(3, 3);
            this.BooksList.MultiSelect = false;
            this.BooksList.Name = "BooksList";
            this.BooksList.ReadOnly = true;
            this.BooksList.RowHeadersVisible = false;
            this.BooksList.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.BooksList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.BooksList.ShowCellToolTips = false;
            this.BooksList.Size = new System.Drawing.Size(989, 595);
            this.BooksList.TabIndex = 4;
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.FillWeight = 50F;
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.ReadOnly = true;
            this.iDDataGridViewTextBoxColumn.Width = 42;
            // 
            // iSBNDataGridViewTextBoxColumn
            // 
            this.iSBNDataGridViewTextBoxColumn.DataPropertyName = "ISBN";
            this.iSBNDataGridViewTextBoxColumn.HeaderText = "ISBN";
            this.iSBNDataGridViewTextBoxColumn.Name = "iSBNDataGridViewTextBoxColumn";
            this.iSBNDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // titleDataGridViewTextBoxColumn
            // 
            this.titleDataGridViewTextBoxColumn.DataPropertyName = "Title";
            this.titleDataGridViewTextBoxColumn.FillWeight = 150F;
            this.titleDataGridViewTextBoxColumn.HeaderText = "Title";
            this.titleDataGridViewTextBoxColumn.Name = "titleDataGridViewTextBoxColumn";
            this.titleDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // authorDataGridViewTextBoxColumn
            // 
            this.authorDataGridViewTextBoxColumn.DataPropertyName = "Author";
            this.authorDataGridViewTextBoxColumn.FillWeight = 150F;
            this.authorDataGridViewTextBoxColumn.HeaderText = "Author";
            this.authorDataGridViewTextBoxColumn.Name = "authorDataGridViewTextBoxColumn";
            this.authorDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // priceDataGridViewTextBoxColumn
            // 
            this.priceDataGridViewTextBoxColumn.DataPropertyName = "Price";
            dataGridViewCellStyle26.Format = "C2";
            dataGridViewCellStyle26.NullValue = null;
            this.priceDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle26;
            this.priceDataGridViewTextBoxColumn.FillWeight = 80F;
            this.priceDataGridViewTextBoxColumn.HeaderText = "Price";
            this.priceDataGridViewTextBoxColumn.Name = "priceDataGridViewTextBoxColumn";
            this.priceDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // BooksViewModelBindingSource
            // 
            this.BooksViewModelBindingSource.DataSource = typeof(Clients.ModelView.BooksViewModel);
            // 
            // ordersTab
            // 
            this.ordersTab.BackColor = System.Drawing.Color.White;
            this.ordersTab.Controls.Add(this.CreateOrderButton);
            this.ordersTab.Controls.Add(this.materialSingleLineTextField1);
            this.ordersTab.Controls.Add(this.ClientEmailLabel);
            this.ordersTab.Controls.Add(this.materialSingleLineTextField2);
            this.ordersTab.Controls.Add(this.materialSingleLineTextField3);
            this.ordersTab.Controls.Add(this.ClientAddressLabel);
            this.ordersTab.Controls.Add(this.ClientNameLabel);
            this.ordersTab.Controls.Add(this.TotalPriceField);
            this.ordersTab.Controls.Add(this.TotalPriceLabel);
            this.ordersTab.Controls.Add(this.BookIDField);
            this.ordersTab.Controls.Add(this.OrdersList);
            this.ordersTab.Controls.Add(this.QuantityField);
            this.ordersTab.Controls.Add(this.QuantityLabel);
            this.ordersTab.Controls.Add(this.BookLabel);
            this.ordersTab.Location = new System.Drawing.Point(4, 22);
            this.ordersTab.Name = "ordersTab";
            this.ordersTab.Padding = new System.Windows.Forms.Padding(3);
            this.ordersTab.Size = new System.Drawing.Size(995, 601);
            this.ordersTab.TabIndex = 0;
            this.ordersTab.Text = "Orders";
            // 
            // CreateOrderButton
            // 
            this.CreateOrderButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.CreateOrderButton.AutoSize = true;
            this.CreateOrderButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.CreateOrderButton.Depth = 0;
            this.CreateOrderButton.Icon = null;
            this.CreateOrderButton.Location = new System.Drawing.Point(863, 174);
            this.CreateOrderButton.MouseState = MaterialSkin.MouseState.HOVER;
            this.CreateOrderButton.Name = "CreateOrderButton";
            this.CreateOrderButton.Primary = true;
            this.CreateOrderButton.Size = new System.Drawing.Size(118, 36);
            this.CreateOrderButton.TabIndex = 14;
            this.CreateOrderButton.Text = "Create Order";
            this.CreateOrderButton.UseVisualStyleBackColor = true;
            // 
            // materialSingleLineTextField1
            // 
            this.materialSingleLineTextField1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.materialSingleLineTextField1.Depth = 0;
            this.materialSingleLineTextField1.Hint = "";
            this.materialSingleLineTextField1.Location = new System.Drawing.Point(128, 122);
            this.materialSingleLineTextField1.MaxLength = 32767;
            this.materialSingleLineTextField1.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialSingleLineTextField1.Name = "materialSingleLineTextField1";
            this.materialSingleLineTextField1.PasswordChar = '\0';
            this.materialSingleLineTextField1.SelectedText = "";
            this.materialSingleLineTextField1.SelectionLength = 0;
            this.materialSingleLineTextField1.SelectionStart = 0;
            this.materialSingleLineTextField1.Size = new System.Drawing.Size(587, 23);
            this.materialSingleLineTextField1.TabIndex = 12;
            this.materialSingleLineTextField1.TabStop = false;
            this.materialSingleLineTextField1.UseSystemPasswordChar = false;
            // 
            // ClientEmailLabel
            // 
            this.ClientEmailLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ClientEmailLabel.AutoSize = true;
            this.ClientEmailLabel.Depth = 0;
            this.ClientEmailLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.ClientEmailLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.ClientEmailLabel.Location = new System.Drawing.Point(6, 126);
            this.ClientEmailLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.ClientEmailLabel.Name = "ClientEmailLabel";
            this.ClientEmailLabel.Size = new System.Drawing.Size(90, 19);
            this.ClientEmailLabel.TabIndex = 11;
            this.ClientEmailLabel.Text = "Client Email";
            // 
            // materialSingleLineTextField2
            // 
            this.materialSingleLineTextField2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.materialSingleLineTextField2.Depth = 0;
            this.materialSingleLineTextField2.Hint = "";
            this.materialSingleLineTextField2.Location = new System.Drawing.Point(128, 22);
            this.materialSingleLineTextField2.MaxLength = 32767;
            this.materialSingleLineTextField2.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialSingleLineTextField2.Name = "materialSingleLineTextField2";
            this.materialSingleLineTextField2.PasswordChar = '\0';
            this.materialSingleLineTextField2.SelectedText = "";
            this.materialSingleLineTextField2.SelectionLength = 0;
            this.materialSingleLineTextField2.SelectionStart = 0;
            this.materialSingleLineTextField2.Size = new System.Drawing.Size(587, 23);
            this.materialSingleLineTextField2.TabIndex = 10;
            this.materialSingleLineTextField2.TabStop = false;
            this.materialSingleLineTextField2.UseSystemPasswordChar = false;
            // 
            // materialSingleLineTextField3
            // 
            this.materialSingleLineTextField3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.materialSingleLineTextField3.Depth = 0;
            this.materialSingleLineTextField3.Hint = "";
            this.materialSingleLineTextField3.Location = new System.Drawing.Point(128, 73);
            this.materialSingleLineTextField3.MaxLength = 32767;
            this.materialSingleLineTextField3.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialSingleLineTextField3.Name = "materialSingleLineTextField3";
            this.materialSingleLineTextField3.PasswordChar = '\0';
            this.materialSingleLineTextField3.SelectedText = "";
            this.materialSingleLineTextField3.SelectionLength = 0;
            this.materialSingleLineTextField3.SelectionStart = 0;
            this.materialSingleLineTextField3.Size = new System.Drawing.Size(587, 23);
            this.materialSingleLineTextField3.TabIndex = 9;
            this.materialSingleLineTextField3.TabStop = false;
            this.materialSingleLineTextField3.UseSystemPasswordChar = false;
            // 
            // ClientAddressLabel
            // 
            this.ClientAddressLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ClientAddressLabel.AutoSize = true;
            this.ClientAddressLabel.Depth = 0;
            this.ClientAddressLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.ClientAddressLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.ClientAddressLabel.Location = new System.Drawing.Point(6, 77);
            this.ClientAddressLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.ClientAddressLabel.Name = "ClientAddressLabel";
            this.ClientAddressLabel.Size = new System.Drawing.Size(107, 19);
            this.ClientAddressLabel.TabIndex = 8;
            this.ClientAddressLabel.Text = "Client Address";
            // 
            // ClientNameLabel
            // 
            this.ClientNameLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ClientNameLabel.AutoSize = true;
            this.ClientNameLabel.Depth = 0;
            this.ClientNameLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.ClientNameLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.ClientNameLabel.Location = new System.Drawing.Point(6, 26);
            this.ClientNameLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.ClientNameLabel.Name = "ClientNameLabel";
            this.ClientNameLabel.Size = new System.Drawing.Size(92, 19);
            this.ClientNameLabel.TabIndex = 7;
            this.ClientNameLabel.Text = "Client Name";
            // 
            // TotalPriceField
            // 
            this.TotalPriceField.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TotalPriceField.Depth = 0;
            this.TotalPriceField.Hint = "";
            this.TotalPriceField.Location = new System.Drawing.Point(873, 122);
            this.TotalPriceField.MaxLength = 32767;
            this.TotalPriceField.MouseState = MaterialSkin.MouseState.HOVER;
            this.TotalPriceField.Name = "TotalPriceField";
            this.TotalPriceField.PasswordChar = '\0';
            this.TotalPriceField.SelectedText = "";
            this.TotalPriceField.SelectionLength = 0;
            this.TotalPriceField.SelectionStart = 0;
            this.TotalPriceField.Size = new System.Drawing.Size(108, 23);
            this.TotalPriceField.TabIndex = 6;
            this.TotalPriceField.TabStop = false;
            this.TotalPriceField.UseSystemPasswordChar = false;
            // 
            // TotalPriceLabel
            // 
            this.TotalPriceLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TotalPriceLabel.AutoSize = true;
            this.TotalPriceLabel.Depth = 0;
            this.TotalPriceLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.TotalPriceLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.TotalPriceLabel.Location = new System.Drawing.Point(769, 126);
            this.TotalPriceLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.TotalPriceLabel.Name = "TotalPriceLabel";
            this.TotalPriceLabel.Size = new System.Drawing.Size(82, 19);
            this.TotalPriceLabel.TabIndex = 5;
            this.TotalPriceLabel.Text = "Total Price";
            // 
            // BookIDField
            // 
            this.BookIDField.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.BookIDField.Depth = 0;
            this.BookIDField.Hint = "";
            this.BookIDField.Location = new System.Drawing.Point(873, 26);
            this.BookIDField.MaxLength = 32767;
            this.BookIDField.MouseState = MaterialSkin.MouseState.HOVER;
            this.BookIDField.Name = "BookIDField";
            this.BookIDField.PasswordChar = '\0';
            this.BookIDField.SelectedText = "";
            this.BookIDField.SelectionLength = 0;
            this.BookIDField.SelectionStart = 0;
            this.BookIDField.Size = new System.Drawing.Size(108, 23);
            this.BookIDField.TabIndex = 4;
            this.BookIDField.TabStop = false;
            this.BookIDField.UseSystemPasswordChar = false;
            // 
            // OrdersList
            // 
            this.OrdersList.AllowUserToAddRows = false;
            this.OrdersList.AllowUserToDeleteRows = false;
            this.OrdersList.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.OrdersList.AutoGenerateColumns = false;
            this.OrdersList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.OrdersList.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.OrdersList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.OrdersList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.OrdersList.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableAlwaysIncludeHeaderText;
            this.OrdersList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.OrdersList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.OrdersList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.orderIDDataGridViewTextBoxColumn1,
            this.bookIDDataGridViewTextBoxColumn,
            this.userIDDataGridViewTextBoxColumn,
            this.quantityDataGridViewTextBoxColumn2,
            this.totalPriceDataGridViewTextBoxColumn,
            this.OrderDate,
            this.clientNameDataGridViewTextBoxColumn,
            this.clientAddressDataGridViewTextBoxColumn,
            this.clientEmailDataGridViewTextBoxColumn,
            this.orderStateDataGridViewTextBoxColumn,
            this.dispatchDateDataGridViewTextBoxColumn1});
            this.OrdersList.DataMember = "Orders";
            this.OrdersList.DataSource = this.OrdersViewModelBindingSource;
            this.OrdersList.EnableHeadersVisualStyles = false;
            this.OrdersList.Location = new System.Drawing.Point(3, 214);
            this.OrdersList.MultiSelect = false;
            this.OrdersList.Name = "OrdersList";
            this.OrdersList.ReadOnly = true;
            this.OrdersList.RowHeadersVisible = false;
            this.OrdersList.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.OrdersList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.OrdersList.ShowCellToolTips = false;
            this.OrdersList.Size = new System.Drawing.Size(989, 384);
            this.OrdersList.TabIndex = 3;
            // 
            // orderIDDataGridViewTextBoxColumn1
            // 
            this.orderIDDataGridViewTextBoxColumn1.DataPropertyName = "OrderID";
            this.orderIDDataGridViewTextBoxColumn1.FillWeight = 130F;
            this.orderIDDataGridViewTextBoxColumn1.HeaderText = "ID";
            this.orderIDDataGridViewTextBoxColumn1.Name = "orderIDDataGridViewTextBoxColumn1";
            this.orderIDDataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // bookIDDataGridViewTextBoxColumn
            // 
            this.bookIDDataGridViewTextBoxColumn.DataPropertyName = "BookID";
            this.bookIDDataGridViewTextBoxColumn.FillWeight = 50F;
            this.bookIDDataGridViewTextBoxColumn.HeaderText = "Book ID";
            this.bookIDDataGridViewTextBoxColumn.Name = "bookIDDataGridViewTextBoxColumn";
            this.bookIDDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // userIDDataGridViewTextBoxColumn
            // 
            this.userIDDataGridViewTextBoxColumn.DataPropertyName = "UserID";
            this.userIDDataGridViewTextBoxColumn.FillWeight = 50F;
            this.userIDDataGridViewTextBoxColumn.HeaderText = "User ID";
            this.userIDDataGridViewTextBoxColumn.Name = "userIDDataGridViewTextBoxColumn";
            this.userIDDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // quantityDataGridViewTextBoxColumn2
            // 
            this.quantityDataGridViewTextBoxColumn2.DataPropertyName = "Quantity";
            this.quantityDataGridViewTextBoxColumn2.FillWeight = 30F;
            this.quantityDataGridViewTextBoxColumn2.HeaderText = "Quantity";
            this.quantityDataGridViewTextBoxColumn2.Name = "quantityDataGridViewTextBoxColumn2";
            this.quantityDataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // totalPriceDataGridViewTextBoxColumn
            // 
            this.totalPriceDataGridViewTextBoxColumn.DataPropertyName = "TotalPrice";
            dataGridViewCellStyle27.Format = "C2";
            dataGridViewCellStyle27.NullValue = null;
            this.totalPriceDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle27;
            this.totalPriceDataGridViewTextBoxColumn.FillWeight = 50F;
            this.totalPriceDataGridViewTextBoxColumn.HeaderText = "Total Price";
            this.totalPriceDataGridViewTextBoxColumn.Name = "totalPriceDataGridViewTextBoxColumn";
            this.totalPriceDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // OrderDate
            // 
            this.OrderDate.DataPropertyName = "OrderDate";
            dataGridViewCellStyle28.Format = "G";
            dataGridViewCellStyle28.NullValue = null;
            this.OrderDate.DefaultCellStyle = dataGridViewCellStyle28;
            this.OrderDate.FillWeight = 90F;
            this.OrderDate.HeaderText = "Order Date";
            this.OrderDate.Name = "OrderDate";
            this.OrderDate.ReadOnly = true;
            // 
            // clientNameDataGridViewTextBoxColumn
            // 
            this.clientNameDataGridViewTextBoxColumn.DataPropertyName = "ClientName";
            this.clientNameDataGridViewTextBoxColumn.FillWeight = 150F;
            this.clientNameDataGridViewTextBoxColumn.HeaderText = "Client Name";
            this.clientNameDataGridViewTextBoxColumn.Name = "clientNameDataGridViewTextBoxColumn";
            this.clientNameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // clientAddressDataGridViewTextBoxColumn
            // 
            this.clientAddressDataGridViewTextBoxColumn.DataPropertyName = "ClientAddress";
            this.clientAddressDataGridViewTextBoxColumn.FillWeight = 180F;
            this.clientAddressDataGridViewTextBoxColumn.HeaderText = "Client Address";
            this.clientAddressDataGridViewTextBoxColumn.Name = "clientAddressDataGridViewTextBoxColumn";
            this.clientAddressDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // clientEmailDataGridViewTextBoxColumn
            // 
            this.clientEmailDataGridViewTextBoxColumn.DataPropertyName = "ClientEmail";
            this.clientEmailDataGridViewTextBoxColumn.HeaderText = "Client Email";
            this.clientEmailDataGridViewTextBoxColumn.Name = "clientEmailDataGridViewTextBoxColumn";
            this.clientEmailDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // orderStateDataGridViewTextBoxColumn
            // 
            this.orderStateDataGridViewTextBoxColumn.DataPropertyName = "OrderState";
            this.orderStateDataGridViewTextBoxColumn.HeaderText = "Order State";
            this.orderStateDataGridViewTextBoxColumn.Name = "orderStateDataGridViewTextBoxColumn";
            this.orderStateDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // dispatchDateDataGridViewTextBoxColumn1
            // 
            this.dispatchDateDataGridViewTextBoxColumn1.DataPropertyName = "DispatchDate";
            dataGridViewCellStyle29.Format = "G";
            dataGridViewCellStyle29.NullValue = "--------------------------------";
            this.dispatchDateDataGridViewTextBoxColumn1.DefaultCellStyle = dataGridViewCellStyle29;
            this.dispatchDateDataGridViewTextBoxColumn1.FillWeight = 90F;
            this.dispatchDateDataGridViewTextBoxColumn1.HeaderText = "Dispatch Date";
            this.dispatchDateDataGridViewTextBoxColumn1.Name = "dispatchDateDataGridViewTextBoxColumn1";
            this.dispatchDateDataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // OrdersViewModelBindingSource
            // 
            this.OrdersViewModelBindingSource.DataSource = typeof(Clients.ModelView.OrdersViewModel);
            // 
            // QuantityField
            // 
            this.QuantityField.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.QuantityField.Depth = 0;
            this.QuantityField.Hint = "";
            this.QuantityField.Location = new System.Drawing.Point(873, 73);
            this.QuantityField.MaxLength = 32767;
            this.QuantityField.MouseState = MaterialSkin.MouseState.HOVER;
            this.QuantityField.Name = "QuantityField";
            this.QuantityField.PasswordChar = '\0';
            this.QuantityField.SelectedText = "";
            this.QuantityField.SelectionLength = 0;
            this.QuantityField.SelectionStart = 0;
            this.QuantityField.Size = new System.Drawing.Size(108, 23);
            this.QuantityField.TabIndex = 2;
            this.QuantityField.TabStop = false;
            this.QuantityField.UseSystemPasswordChar = false;
            // 
            // QuantityLabel
            // 
            this.QuantityLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.QuantityLabel.AutoSize = true;
            this.QuantityLabel.Depth = 0;
            this.QuantityLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.QuantityLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.QuantityLabel.Location = new System.Drawing.Point(769, 77);
            this.QuantityLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.QuantityLabel.Name = "QuantityLabel";
            this.QuantityLabel.Size = new System.Drawing.Size(64, 19);
            this.QuantityLabel.TabIndex = 1;
            this.QuantityLabel.Text = "Quantity";
            // 
            // BookLabel
            // 
            this.BookLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.BookLabel.AutoSize = true;
            this.BookLabel.Depth = 0;
            this.BookLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.BookLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.BookLabel.Location = new System.Drawing.Point(769, 30);
            this.BookLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.BookLabel.Name = "BookLabel";
            this.BookLabel.Size = new System.Drawing.Size(44, 19);
            this.BookLabel.TabIndex = 0;
            this.BookLabel.Text = "Book";
            // 
            // stockTab
            // 
            this.stockTab.Controls.Add(this.IncomingStockList);
            this.stockTab.Controls.Add(this.IncomingStockLabel);
            this.stockTab.Controls.Add(this.StockLabel);
            this.stockTab.Controls.Add(this.StockList);
            this.stockTab.Location = new System.Drawing.Point(4, 22);
            this.stockTab.Name = "stockTab";
            this.stockTab.Padding = new System.Windows.Forms.Padding(3);
            this.stockTab.Size = new System.Drawing.Size(995, 601);
            this.stockTab.TabIndex = 1;
            this.stockTab.Text = "Stock";
            this.stockTab.UseVisualStyleBackColor = true;
            // 
            // IncomingStockList
            // 
            this.IncomingStockList.AllowUserToAddRows = false;
            this.IncomingStockList.AllowUserToDeleteRows = false;
            this.IncomingStockList.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.IncomingStockList.AutoGenerateColumns = false;
            this.IncomingStockList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.IncomingStockList.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.IncomingStockList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.IncomingStockList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.IncomingStockList.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableAlwaysIncludeHeaderText;
            this.IncomingStockList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.IncomingStockList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.IncomingStockList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn2,
            this.orderIDDataGridViewTextBoxColumn,
            this.quantityDataGridViewTextBoxColumn1,
            this.dispatchDateDataGridViewTextBoxColumn,
            this.AcceptColumn});
            this.IncomingStockList.DataMember = "IncomingStock";
            this.IncomingStockList.DataSource = this.StockViewModelBindingSource;
            this.IncomingStockList.EnableHeadersVisualStyles = false;
            this.IncomingStockList.Location = new System.Drawing.Point(0, 332);
            this.IncomingStockList.MultiSelect = false;
            this.IncomingStockList.Name = "IncomingStockList";
            this.IncomingStockList.ReadOnly = true;
            this.IncomingStockList.RowHeadersVisible = false;
            this.IncomingStockList.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.IncomingStockList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.IncomingStockList.ShowCellToolTips = false;
            this.IncomingStockList.Size = new System.Drawing.Size(995, 269);
            this.IncomingStockList.TabIndex = 3;
            this.IncomingStockList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.RemoveAcceptButton);
            // 
            // iDDataGridViewTextBoxColumn2
            // 
            this.iDDataGridViewTextBoxColumn2.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn2.FillWeight = 50F;
            this.iDDataGridViewTextBoxColumn2.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn2.Name = "iDDataGridViewTextBoxColumn2";
            this.iDDataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // orderIDDataGridViewTextBoxColumn
            // 
            this.orderIDDataGridViewTextBoxColumn.DataPropertyName = "OrderID";
            this.orderIDDataGridViewTextBoxColumn.FillWeight = 150F;
            this.orderIDDataGridViewTextBoxColumn.HeaderText = "Order ID";
            this.orderIDDataGridViewTextBoxColumn.Name = "orderIDDataGridViewTextBoxColumn";
            this.orderIDDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // quantityDataGridViewTextBoxColumn1
            // 
            this.quantityDataGridViewTextBoxColumn1.DataPropertyName = "Quantity";
            this.quantityDataGridViewTextBoxColumn1.FillWeight = 50F;
            this.quantityDataGridViewTextBoxColumn1.HeaderText = "Quantity";
            this.quantityDataGridViewTextBoxColumn1.Name = "quantityDataGridViewTextBoxColumn1";
            this.quantityDataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // dispatchDateDataGridViewTextBoxColumn
            // 
            this.dispatchDateDataGridViewTextBoxColumn.DataPropertyName = "DispatchDate";
            dataGridViewCellStyle30.Format = "G";
            dataGridViewCellStyle30.NullValue = null;
            this.dispatchDateDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle30;
            this.dispatchDateDataGridViewTextBoxColumn.HeaderText = "Dispatch Date";
            this.dispatchDateDataGridViewTextBoxColumn.Name = "dispatchDateDataGridViewTextBoxColumn";
            this.dispatchDateDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // AcceptColumn
            // 
            this.AcceptColumn.FillWeight = 30F;
            this.AcceptColumn.HeaderText = "Accept";
            this.AcceptColumn.Name = "AcceptColumn";
            this.AcceptColumn.ReadOnly = true;
            this.AcceptColumn.Text = "Accept";
            this.AcceptColumn.UseColumnTextForButtonValue = true;
            // 
            // StockViewModelBindingSource
            // 
            this.StockViewModelBindingSource.DataSource = typeof(Clients.ModelView.StockViewModel);
            // 
            // IncomingStockLabel
            // 
            this.IncomingStockLabel.AutoSize = true;
            this.IncomingStockLabel.Depth = 0;
            this.IncomingStockLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.IncomingStockLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.IncomingStockLabel.Location = new System.Drawing.Point(6, 310);
            this.IncomingStockLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.IncomingStockLabel.Name = "IncomingStockLabel";
            this.IncomingStockLabel.Size = new System.Drawing.Size(71, 19);
            this.IncomingStockLabel.TabIndex = 2;
            this.IncomingStockLabel.Text = "Incoming";
            // 
            // StockLabel
            // 
            this.StockLabel.AutoSize = true;
            this.StockLabel.Depth = 0;
            this.StockLabel.Font = new System.Drawing.Font("Roboto", 11F);
            this.StockLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.StockLabel.Location = new System.Drawing.Point(9, 12);
            this.StockLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.StockLabel.Name = "StockLabel";
            this.StockLabel.Size = new System.Drawing.Size(48, 19);
            this.StockLabel.TabIndex = 1;
            this.StockLabel.Text = "Stock";
            // 
            // StockList
            // 
            this.StockList.AllowUserToAddRows = false;
            this.StockList.AllowUserToDeleteRows = false;
            this.StockList.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.StockList.AutoGenerateColumns = false;
            this.StockList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.StockList.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.StockList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.StockList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.StockList.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableAlwaysIncludeHeaderText;
            this.StockList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.StockList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.StockList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn1,
            this.quantityDataGridViewTextBoxColumn});
            this.StockList.DataMember = "Stock";
            this.StockList.DataSource = this.StockViewModelBindingSource;
            this.StockList.EnableHeadersVisualStyles = false;
            this.StockList.Location = new System.Drawing.Point(0, 34);
            this.StockList.Name = "StockList";
            this.StockList.ReadOnly = true;
            this.StockList.RowHeadersVisible = false;
            this.StockList.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.StockList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.StockList.ShowCellToolTips = false;
            this.StockList.Size = new System.Drawing.Size(995, 273);
            this.StockList.TabIndex = 0;
            // 
            // iDDataGridViewTextBoxColumn1
            // 
            this.iDDataGridViewTextBoxColumn1.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn1.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn1.Name = "iDDataGridViewTextBoxColumn1";
            this.iDDataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // quantityDataGridViewTextBoxColumn
            // 
            this.quantityDataGridViewTextBoxColumn.DataPropertyName = "Quantity";
            this.quantityDataGridViewTextBoxColumn.HeaderText = "Quantity";
            this.quantityDataGridViewTextBoxColumn.Name = "quantityDataGridViewTextBoxColumn";
            this.quantityDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // RefreshButton
            // 
            this.RefreshButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.RefreshButton.AutoSize = true;
            this.RefreshButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.RefreshButton.Depth = 0;
            this.RefreshButton.Icon = null;
            this.RefreshButton.Location = new System.Drawing.Point(893, 64);
            this.RefreshButton.MouseState = MaterialSkin.MouseState.HOVER;
            this.RefreshButton.Name = "RefreshButton";
            this.RefreshButton.Primary = true;
            this.RefreshButton.Size = new System.Drawing.Size(118, 36);
            this.RefreshButton.TabIndex = 6;
            this.RefreshButton.Text = "Refresh Data";
            this.RefreshButton.UseVisualStyleBackColor = true;
            this.RefreshButton.MouseClick += new System.Windows.Forms.MouseEventHandler(this.RefreshButtonClick);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1027, 776);
            this.Controls.Add(this.RefreshButton);
            this.Controls.Add(this.TabSelector);
            this.Controls.Add(this.TabControl);
            this.Name = "MainForm";
            this.Text = "Bookstore";
            this.TabControl.ResumeLayout(false);
            this.booksTab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.BooksList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BooksViewModelBindingSource)).EndInit();
            this.ordersTab.ResumeLayout(false);
            this.ordersTab.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersViewModelBindingSource)).EndInit();
            this.stockTab.ResumeLayout(false);
            this.stockTab.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.IncomingStockList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.StockViewModelBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.StockList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MaterialSkin.Controls.MaterialTabSelector TabSelector;
        private MaterialSkin.Controls.MaterialTabControl TabControl;
        private System.Windows.Forms.TabPage ordersTab;
        private MaterialSkin.Controls.MaterialSingleLineTextField QuantityField;
        private MaterialSkin.Controls.MaterialLabel QuantityLabel;
        private MaterialSkin.Controls.MaterialLabel BookLabel;
        private System.Windows.Forms.TabPage stockTab;
        private System.Windows.Forms.DataGridView StockList;
        private System.Windows.Forms.TabPage booksTab;
        private System.Windows.Forms.DataGridView BooksList;
        private MaterialSkin.Controls.MaterialLabel StockLabel;
        private MaterialSkin.Controls.MaterialLabel IncomingStockLabel;
        private System.Windows.Forms.DataGridView IncomingStockList;
        private System.Windows.Forms.DataGridView OrdersList;
        private MaterialSkin.Controls.MaterialSingleLineTextField BookIDField;
        private MaterialSkin.Controls.MaterialSingleLineTextField TotalPriceField;
        private MaterialSkin.Controls.MaterialLabel TotalPriceLabel;
        private MaterialSkin.Controls.MaterialSingleLineTextField materialSingleLineTextField1;
        private MaterialSkin.Controls.MaterialLabel ClientEmailLabel;
        private MaterialSkin.Controls.MaterialSingleLineTextField materialSingleLineTextField2;
        private MaterialSkin.Controls.MaterialSingleLineTextField materialSingleLineTextField3;
        private MaterialSkin.Controls.MaterialLabel ClientAddressLabel;
        private MaterialSkin.Controls.MaterialLabel ClientNameLabel;
        private MaterialSkin.Controls.MaterialRaisedButton CreateOrderButton;
        private System.Windows.Forms.BindingSource BooksViewModelBindingSource;
        private System.Windows.Forms.BindingSource StockViewModelBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn quantityDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource OrdersViewModelBindingSource;
        private MaterialSkin.Controls.MaterialRaisedButton RefreshButton;
        private System.Windows.Forms.DataGridViewTextBoxColumn orderIDDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn bookIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn userIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn quantityDataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn totalPriceDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientAddressDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientEmailDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn orderStateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dispatchDateDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn orderIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn quantityDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dispatchDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewButtonColumn AcceptColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iSBNDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn titleDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn authorDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn priceDataGridViewTextBoxColumn;
    }
}

