using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp.images
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insert_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //string path = @"images\" + FileUpload1.FileName;
                //FileUpload1.SaveAs(Server.MapPath("~") + @"\" + path);

                //byte[] arrImage;
                //System.IO.MemoryStream mstream = new System.IO.MemoryStream();
                //FileUpload1.Image1.Save(mstream, System.Drawing.Imaging.ImageFormat.Jpeg);
                //arrImage = mstream.GetBuffer();
                //UInt32 filesize;


                FileUpload1.SaveAs(Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName);
                string path = "~/images/img/" + FileUpload1.FileName;
                Image1.ImageUrl = path;

              
                //Image1.ImageUrl = Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName;
                //Bitmap bitmap = new Bitmap(Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName);
                //ImageConverter converter = new ImageConverter();
                //byte[] blob = (byte[])converter.ConvertTo(bitmap, typeof(byte[]));

                //Connection.dbCommand("Update 'flc'.'inventory' set 'image'=" + blob + " where ('ID'=" + id_txt.Text + ");");
                //System.Windows.Forms.MessageBox.Show("Successfully Saved.");
            }

        }

        protected void FileUpload1_Load(object sender, EventArgs e)
        {
            //BitmapImage currentBitmapImage = new BitmapImage();

            //currentBitmapImage.BeginInit();
            //currentBitmapImage.UriSource = imageUri;
            //currentBitmapImage.EndInit();



            //imgMain.Source = currentBitmapImage;

            //System.Drawing.Bitmap bmp = GetBitmap(imgMain);
            //bmp.Save(imagepath, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
    }
}
