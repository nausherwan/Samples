using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aspose.Cells;
using System.Data;
using System.IO;
using Aspose.Cells.Drawing;

namespace ExcelToGridView
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            string filename = Server.MapPath("~/Data/book1.xlsx");

            //Instantiating a Workbook object and open the uploaded file
            Workbook workbook = new Workbook(filename);

            //Obtaining the reference of first worksheet by passing its sheet index
            Worksheet worksheet = workbook.Worksheets[0];

            int firstRow = 0;
            int firstColumn = 1;
            int lastRow = 6;
            int lastColumn = 5;
            int imageColumn = 4;

            //Exporting the contents to DataTable
            DataTable dataTable = worksheet.Cells.ExportDataTable(firstRow, firstColumn, lastRow, lastColumn, true);

            //Get the images from Worksheet Pictures collection and add to data table
            MemoryStream ms = new MemoryStream();
            int i = 0;
            Picture pic = null;
            foreach (DataRow dr in dataTable.Rows)
            {
                /*Next step and GetPicture method is used if images in the collection are not in correct order
                GetPicture method will look for the image associated with the particular row / cell and return it
                Incase the pictures are inserted in excel file in order, no need to execute this
                simply use the index to load the pictures to datatable*/
                pic = GetPicture(worksheet.Pictures, i);

                //Convert picture to stream
                pic.ToImage(ms, new Aspose.Cells.Rendering.ImageOrPrintOptions());
                ms.Position = 0;
                Byte[] bytes = ms.ToArray();

                //Convert the image stream to Base64 string and include that in the datatable's image column
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                dr[imageColumn] = "data:image/png;base64," + base64String;
                i++;
            }

            dataTable.AcceptChanges();

            //Set table as data source of the grid and bind it
            GridView1.DataSource = dataTable;
            GridView1.DataBind();


        }
        /// <summary>
        /// This function is used to get the picture image based on the associated cell
        /// </summary>
        /// <param name="pictureCollection"></param>
        /// <param name="row"></param>
        /// <returns></returns>
        private Picture GetPicture(PictureCollection pictureCollection, int row)
        {
            Picture returnPic = null;
            foreach (Picture pic in pictureCollection)
            {
                if (pic.UpperLeftRow == row + 1)
                {
                    returnPic = pic;
                    break;
                }
            }
            return returnPic;

        }
        /// <summary>
        /// This event handler is used to bind the images with gridview image control
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                System.Web.UI.WebControls.Image img1 = (System.Web.UI.WebControls.Image)e.Row.FindControl("Image1");
                string imgStr = (string)DataBinder.Eval(e.Row.DataItem, "Logo");
                img1.ImageUrl = imgStr;
            }
        }
    }
}