using Common;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clients.Engine
{
    public class PDFEngine
    {
        #region Singleton
        private static PDFEngine instance;

        public static PDFEngine Instance
        {
            get
            {
                if (instance == null)
                    instance = new PDFEngine();
                return instance;
            }
        }

        private PDFEngine()
        {
        }
        #endregion

        public bool CreateOrderPDF(StoreBookOrder order)
        {
            // Create a Document object
            Document document = new Document(PageSize.A4, 70, 70, 70, 70);

            //MemoryStream
            PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(AppDomain.CurrentDomain.BaseDirectory + order.OrderID + ".pdf", FileMode.Create));

            // First, create our fonts
            var titleFont = FontFactory.GetFont("Arial", 14, Font.BOLD);
            var boldTableFont = FontFactory.GetFont("Arial", 10, Font.BOLD);
            var bodyFont = FontFactory.GetFont("Arial", 10, Font.NORMAL);
            Rectangle pageSize = writer.PageSize;

            // Open the Document for writing
            document.Open();
            //Add elements to the document here

            #region Top table
            // Create the header table 
            PdfPTable headertable = new PdfPTable(3);
            headertable.HorizontalAlignment = 0;
            headertable.WidthPercentage = 100;
            headertable.SetWidths(new float[] { 4, 2, 4 });  // then set the column's __relative__ widths
            headertable.DefaultCell.Border = Rectangle.NO_BORDER;
            //headertable.DefaultCell.Border = Rectangle.BOX; //for testing
            headertable.SpacingAfter = 30;
            PdfPTable nested = new PdfPTable(1);
            nested.DefaultCell.Border = Rectangle.BOX;
            PdfPCell nextPostCell1 = new PdfPCell(new Phrase("TDIN Bookstore", bodyFont));
            nextPostCell1.Border = Rectangle.LEFT_BORDER | Rectangle.RIGHT_BORDER;
            nested.AddCell(nextPostCell1);
            PdfPCell nextPostCell2 = new PdfPCell(new Phrase("Faculdade de Engenharia,", bodyFont));
            nextPostCell2.Border = Rectangle.LEFT_BORDER | Rectangle.RIGHT_BORDER;
            nested.AddCell(nextPostCell2);
            PdfPCell nesthousing = new PdfPCell(nested);
            nesthousing.Rowspan = 4;
            nesthousing.Padding = 0f;
            headertable.AddCell(nesthousing);

            headertable.AddCell("");
            PdfPCell invoiceCell = new PdfPCell(new Phrase("ORDER", titleFont));
            invoiceCell.HorizontalAlignment = 2;
            invoiceCell.Border = Rectangle.NO_BORDER;
            headertable.AddCell(invoiceCell);
            PdfPCell noCell = new PdfPCell(new Phrase("No :", bodyFont));
            noCell.HorizontalAlignment = 2;
            noCell.Border = Rectangle.NO_BORDER;
            headertable.AddCell(noCell);
            headertable.AddCell(new Phrase(order.OrderID, bodyFont));
            PdfPCell dateCell = new PdfPCell(new Phrase("Date :", bodyFont));
            dateCell.HorizontalAlignment = 2;
            dateCell.Border = Rectangle.NO_BORDER;
            headertable.AddCell(dateCell);
            headertable.AddCell(new Phrase(order.OrderDate.ToString(), bodyFont));
            PdfPCell billCell = new PdfPCell(new Phrase("Bill To :", bodyFont));
            billCell.HorizontalAlignment = 2;
            billCell.Border = Rectangle.NO_BORDER;
            headertable.AddCell(billCell);
            headertable.AddCell(new Phrase(order.ClientName + "\n" + order.ClientAddress + "\n" + order.ClientEmail, bodyFont));
            document.Add(headertable);
            #endregion

            #region Items Table
            //Create body table
            PdfPTable itemTable = new PdfPTable(2);
            itemTable.HorizontalAlignment = 0;
            itemTable.WidthPercentage = 100;
            itemTable.SetWidths(new float[] { 10, 20 });  // then set the column's __relative__ widths
            itemTable.SpacingAfter = 40;
            itemTable.DefaultCell.Border = Rectangle.BOX;
            PdfPCell cell1 = new PdfPCell(new Phrase("ID", boldTableFont));
            cell1.HorizontalAlignment = 1;
            itemTable.AddCell(cell1);
            PdfPCell cell2 = new PdfPCell(new Phrase("QUANTITY", boldTableFont));
            cell2.HorizontalAlignment = 1;
            itemTable.AddCell(cell2);


            // Add book
            PdfPCell numberCell = new PdfPCell(new Phrase(order.BookID.ToString(), bodyFont));
            numberCell.HorizontalAlignment = 1;
            numberCell.PaddingLeft = 10f;
            numberCell.Border = Rectangle.LEFT_BORDER | Rectangle.RIGHT_BORDER;
            itemTable.AddCell(numberCell);

            PdfPCell qtyCell = new PdfPCell(new Phrase(order.Quantity.ToString(), bodyFont));
            qtyCell.HorizontalAlignment = 1;
            qtyCell.PaddingLeft = 10f;
            qtyCell.Border = Rectangle.LEFT_BORDER | Rectangle.RIGHT_BORDER;
            itemTable.AddCell(qtyCell);

            // Table footer
            PdfPCell totalAmtStrCell = new PdfPCell(new Phrase("Total Amount", boldTableFont));
            totalAmtStrCell.HorizontalAlignment = 1;
            itemTable.AddCell(totalAmtStrCell);
            PdfPCell totalAmtCell = new PdfPCell(new Phrase(order.TotalPrice.ToString("#,###.00") + "€", boldTableFont));
            totalAmtCell.HorizontalAlignment = 1;
            itemTable.AddCell(totalAmtCell);

            document.Add(itemTable);
            #endregion

            //Approved by
            PdfContentByte cb = new PdfContentByte(writer);
            BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1250, true);
            cb = writer.DirectContent;
            cb.BeginText();
            cb.SetFontAndSize(bf, 10);
            cb.SetTextMatrix(pageSize.GetLeft(300), 200);
            cb.ShowText("Approved by TDIN FEUP");
            cb.EndText();

            cb = new PdfContentByte(writer);
            bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1250, true);
            cb = writer.DirectContent;
            cb.BeginText();
            cb.SetFontAndSize(bf, 10);
            cb.SetTextMatrix(pageSize.GetLeft(70), 100);
            cb.ShowText("Thank you for buying at TDIN Bookstore");
            cb.EndText();

            document.Close();
            return true;
        }
    }
}
