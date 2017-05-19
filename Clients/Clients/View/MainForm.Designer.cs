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
            this.TabSelector = new MaterialSkin.Controls.MaterialTabSelector();
            this.TabControl = new MaterialSkin.Controls.MaterialTabControl();
            this.ordersTab = new System.Windows.Forms.TabPage();
            this.QuantityField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.QuantityLabel = new MaterialSkin.Controls.MaterialLabel();
            this.BookLabel = new MaterialSkin.Controls.MaterialLabel();
            this.stockTab = new System.Windows.Forms.TabPage();
            this.StockList = new System.Windows.Forms.DataGridView();
            this.booksTab = new System.Windows.Forms.TabPage();
            this.BooksList = new System.Windows.Forms.DataGridView();
            this.IdColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.IsbnColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TitleColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AuthorColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PriceColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StockLabel = new MaterialSkin.Controls.MaterialLabel();
            this.IncomingStockLabel = new MaterialSkin.Controls.MaterialLabel();
            this.IncomingStockList = new System.Windows.Forms.DataGridView();
            this.StockBookIDColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StockBookQuantityColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DispatchDateColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AcceptColumn = new System.Windows.Forms.DataGridViewButtonColumn();
            this.OrdersList = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderBookIDColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderDateColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderStateColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderDispatchDateColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderTotalPriceColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderClientName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderClientAddress = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OrderUserID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BookIDField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.TotalPriceField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.TotalPriceLabel = new MaterialSkin.Controls.MaterialLabel();
            this.materialSingleLineTextField1 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.ClientEmailLabel = new MaterialSkin.Controls.MaterialLabel();
            this.materialSingleLineTextField2 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.materialSingleLineTextField3 = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.ClientAddressLabel = new MaterialSkin.Controls.MaterialLabel();
            this.ClientNameLabel = new MaterialSkin.Controls.MaterialLabel();
            this.CreateOrderButton = new MaterialSkin.Controls.MaterialRaisedButton();
            this.TabControl.SuspendLayout();
            this.ordersTab.SuspendLayout();
            this.stockTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.StockList)).BeginInit();
            this.booksTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.BooksList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.IncomingStockList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersList)).BeginInit();
            this.SuspendLayout();
            // 
            // TabSelector
            // 
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
            this.TabControl.Controls.Add(this.booksTab);
            this.TabControl.Controls.Add(this.ordersTab);
            this.TabControl.Controls.Add(this.stockTab);
            this.TabControl.Depth = 0;
            this.TabControl.Location = new System.Drawing.Point(12, 117);
            this.TabControl.MouseState = MaterialSkin.MouseState.HOVER;
            this.TabControl.Name = "TabControl";
            this.TabControl.SelectedIndex = 0;
            this.TabControl.Size = new System.Drawing.Size(1003, 538);
            this.TabControl.TabIndex = 0;
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
            this.ordersTab.Size = new System.Drawing.Size(995, 512);
            this.ordersTab.TabIndex = 0;
            this.ordersTab.Text = "Orders";
            // 
            // QuantityField
            // 
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
            this.stockTab.Size = new System.Drawing.Size(995, 512);
            this.stockTab.TabIndex = 1;
            this.stockTab.Text = "Stock";
            this.stockTab.UseVisualStyleBackColor = true;
            // 
            // StockList
            // 
            this.StockList.AllowUserToAddRows = false;
            this.StockList.AllowUserToDeleteRows = false;
            this.StockList.AllowUserToResizeColumns = false;
            this.StockList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.StockList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.StockList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.StockBookIDColumn,
            this.StockBookQuantityColumn});
            this.StockList.Location = new System.Drawing.Point(6, 42);
            this.StockList.Name = "StockList";
            this.StockList.Size = new System.Drawing.Size(983, 214);
            this.StockList.TabIndex = 0;
            // 
            // booksTab
            // 
            this.booksTab.Controls.Add(this.BooksList);
            this.booksTab.Location = new System.Drawing.Point(4, 22);
            this.booksTab.Name = "booksTab";
            this.booksTab.Padding = new System.Windows.Forms.Padding(3);
            this.booksTab.Size = new System.Drawing.Size(995, 512);
            this.booksTab.TabIndex = 2;
            this.booksTab.Text = "Books";
            this.booksTab.UseVisualStyleBackColor = true;
            // 
            // BooksList
            // 
            this.BooksList.AllowUserToAddRows = false;
            this.BooksList.AllowUserToDeleteRows = false;
            this.BooksList.AllowUserToResizeRows = false;
            this.BooksList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.BooksList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.BooksList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IdColumn,
            this.IsbnColumn,
            this.TitleColumn,
            this.AuthorColumn,
            this.PriceColumn});
            this.BooksList.Location = new System.Drawing.Point(6, 18);
            this.BooksList.Name = "BooksList";
            this.BooksList.ReadOnly = true;
            this.BooksList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.BooksList.Size = new System.Drawing.Size(983, 488);
            this.BooksList.TabIndex = 4;
            // 
            // IdColumn
            // 
            this.IdColumn.HeaderText = "ID";
            this.IdColumn.Name = "IdColumn";
            this.IdColumn.ReadOnly = true;
            // 
            // IsbnColumn
            // 
            this.IsbnColumn.HeaderText = "ISBN";
            this.IsbnColumn.Name = "IsbnColumn";
            this.IsbnColumn.ReadOnly = true;
            // 
            // TitleColumn
            // 
            this.TitleColumn.HeaderText = "Title";
            this.TitleColumn.Name = "TitleColumn";
            this.TitleColumn.ReadOnly = true;
            // 
            // AuthorColumn
            // 
            this.AuthorColumn.HeaderText = "Author";
            this.AuthorColumn.Name = "AuthorColumn";
            this.AuthorColumn.ReadOnly = true;
            // 
            // PriceColumn
            // 
            this.PriceColumn.HeaderText = "Price";
            this.PriceColumn.Name = "PriceColumn";
            this.PriceColumn.ReadOnly = true;
            // 
            // StockLabel
            // 
            this.StockLabel.AutoSize = true;
            this.StockLabel.Depth = 0;
            this.StockLabel.Font = new System.Drawing.Font("Roboto", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.StockLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.StockLabel.Location = new System.Drawing.Point(9, 12);
            this.StockLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.StockLabel.Name = "StockLabel";
            this.StockLabel.Size = new System.Drawing.Size(58, 24);
            this.StockLabel.TabIndex = 1;
            this.StockLabel.Text = "Stock";
            // 
            // IncomingStockLabel
            // 
            this.IncomingStockLabel.AutoSize = true;
            this.IncomingStockLabel.Depth = 0;
            this.IncomingStockLabel.Font = new System.Drawing.Font("Roboto", 14F);
            this.IncomingStockLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.IncomingStockLabel.Location = new System.Drawing.Point(9, 266);
            this.IncomingStockLabel.MouseState = MaterialSkin.MouseState.HOVER;
            this.IncomingStockLabel.Name = "IncomingStockLabel";
            this.IncomingStockLabel.Size = new System.Drawing.Size(89, 24);
            this.IncomingStockLabel.TabIndex = 2;
            this.IncomingStockLabel.Text = "Incoming";
            // 
            // IncomingStockList
            // 
            this.IncomingStockList.AllowUserToAddRows = false;
            this.IncomingStockList.AllowUserToDeleteRows = false;
            this.IncomingStockList.AllowUserToResizeColumns = false;
            this.IncomingStockList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.IncomingStockList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.IncomingStockList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn3,
            this.DispatchDateColumn,
            this.AcceptColumn});
            this.IncomingStockList.Location = new System.Drawing.Point(6, 295);
            this.IncomingStockList.Name = "IncomingStockList";
            this.IncomingStockList.Size = new System.Drawing.Size(983, 214);
            this.IncomingStockList.TabIndex = 3;
            // 
            // StockBookIDColumn
            // 
            this.StockBookIDColumn.HeaderText = "ID";
            this.StockBookIDColumn.Name = "StockBookIDColumn";
            this.StockBookIDColumn.ReadOnly = true;
            // 
            // StockBookQuantityColumn
            // 
            this.StockBookQuantityColumn.HeaderText = "Quantity";
            this.StockBookQuantityColumn.Name = "StockBookQuantityColumn";
            this.StockBookQuantityColumn.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.HeaderText = "Quantity";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            // 
            // DispatchDateColumn
            // 
            this.DispatchDateColumn.HeaderText = "Dispatch Date";
            this.DispatchDateColumn.Name = "DispatchDateColumn";
            this.DispatchDateColumn.ReadOnly = true;
            // 
            // AcceptColumn
            // 
            this.AcceptColumn.HeaderText = "Accept";
            this.AcceptColumn.Name = "AcceptColumn";
            this.AcceptColumn.ReadOnly = true;
            // 
            // OrdersList
            // 
            this.OrdersList.AllowUserToAddRows = false;
            this.OrdersList.AllowUserToDeleteRows = false;
            this.OrdersList.AllowUserToResizeColumns = false;
            this.OrdersList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.OrdersList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.OrdersList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn2,
            this.OrderBookIDColumn,
            this.dataGridViewTextBoxColumn4,
            this.OrderDateColumn,
            this.OrderStateColumn,
            this.OrderDispatchDateColumn,
            this.OrderTotalPriceColumn,
            this.OrderClientName,
            this.OrderClientAddress,
            this.OrderUserID});
            this.OrdersList.Location = new System.Drawing.Point(6, 231);
            this.OrdersList.Name = "OrdersList";
            this.OrdersList.Size = new System.Drawing.Size(975, 275);
            this.OrdersList.TabIndex = 3;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.HeaderText = "ID";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // OrderBookIDColumn
            // 
            this.OrderBookIDColumn.HeaderText = "Book ID";
            this.OrderBookIDColumn.Name = "OrderBookIDColumn";
            this.OrderBookIDColumn.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.HeaderText = "Quantity";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            // 
            // OrderDateColumn
            // 
            this.OrderDateColumn.HeaderText = "Order Date";
            this.OrderDateColumn.Name = "OrderDateColumn";
            this.OrderDateColumn.ReadOnly = true;
            // 
            // OrderStateColumn
            // 
            this.OrderStateColumn.HeaderText = "State";
            this.OrderStateColumn.Name = "OrderStateColumn";
            this.OrderStateColumn.ReadOnly = true;
            // 
            // OrderDispatchDateColumn
            // 
            this.OrderDispatchDateColumn.HeaderText = "Dispatch Date";
            this.OrderDispatchDateColumn.Name = "OrderDispatchDateColumn";
            this.OrderDispatchDateColumn.ReadOnly = true;
            // 
            // OrderTotalPriceColumn
            // 
            this.OrderTotalPriceColumn.HeaderText = "Total Price";
            this.OrderTotalPriceColumn.Name = "OrderTotalPriceColumn";
            this.OrderTotalPriceColumn.ReadOnly = true;
            // 
            // OrderClientName
            // 
            this.OrderClientName.HeaderText = "Client Name";
            this.OrderClientName.Name = "OrderClientName";
            this.OrderClientName.ReadOnly = true;
            // 
            // OrderClientAddress
            // 
            this.OrderClientAddress.HeaderText = "Client Address";
            this.OrderClientAddress.Name = "OrderClientAddress";
            this.OrderClientAddress.ReadOnly = true;
            // 
            // OrderUserID
            // 
            this.OrderUserID.HeaderText = "User ID";
            this.OrderUserID.Name = "OrderUserID";
            this.OrderUserID.ReadOnly = true;
            // 
            // BookIDField
            // 
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
            // TotalPriceField
            // 
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
            // materialSingleLineTextField1
            // 
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
            // CreateOrderButton
            // 
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
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1027, 667);
            this.Controls.Add(this.TabSelector);
            this.Controls.Add(this.TabControl);
            this.Name = "MainForm";
            this.Text = "Bookstore";
            this.TabControl.ResumeLayout(false);
            this.ordersTab.ResumeLayout(false);
            this.ordersTab.PerformLayout();
            this.stockTab.ResumeLayout(false);
            this.stockTab.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.StockList)).EndInit();
            this.booksTab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.BooksList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.IncomingStockList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.OrdersList)).EndInit();
            this.ResumeLayout(false);

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
        private System.Windows.Forms.DataGridViewTextBoxColumn IdColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn IsbnColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn TitleColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn AuthorColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn PriceColumn;
        private MaterialSkin.Controls.MaterialLabel StockLabel;
        private MaterialSkin.Controls.MaterialLabel IncomingStockLabel;
        private System.Windows.Forms.DataGridView IncomingStockList;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn DispatchDateColumn;
        private System.Windows.Forms.DataGridViewButtonColumn AcceptColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn StockBookIDColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn StockBookQuantityColumn;
        private System.Windows.Forms.DataGridView OrdersList;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderBookIDColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderDateColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderStateColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderDispatchDateColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderTotalPriceColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderClientName;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderClientAddress;
        private System.Windows.Forms.DataGridViewTextBoxColumn OrderUserID;
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
    }
}

