using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FLCwebApp.images
{
    public partial class Add : System.Web.UI.Page
    {
        //MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=root;password=ctamalla;database=flc");
        //MySqlCommand com = new MySqlCommand();
        //DataTable dt = new DataTable();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    id_txt.Focus();
        //}

        protected void insert_Click(object sender, EventArgs e)
        {
            //con.Open();

            if (FileUpload1.HasFile)
            {

                string path = @"images\" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~") + @"\" + path);

                //    com = new MySqlCommand("Update inventory set image='" + path + "' where ID='" + id_txt.Text + "'",con);
                //    com.ExecuteNonQuery();
                //    con.Close();   
                //    Label1.Visible = true;
                //    Label1.Text = "Image Saved.";
                //}
                //else
                //{
                //    System.Windows.Forms.MessageBox.Show("Failed.");
                //}

                //byte[] arrImage;
                //System.IO.MemoryStream mstream = new System.IO.MemoryStream();
                //FileUpload1.Image1.Save(mstream, System.Drawing.Imaging.ImageFormat.png);
                //arrImage = mstream.GetBuffer();
                //UInt32 filesize;


                //FileUpload1.SaveAs(Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName);
                //string path = "~/images/img/" + FileUpload1.FileName;
                //Image1.ImageUrl = path;


                //Image1.ImageUrl = Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName;
                //Bitmap bitmap = new Bitmap(Server.MapPath("img").ToString() + @"\" + FileUpload1.FileName);
                //ImageConverter converter = new ImageConverter();
                //byte[] blob = (byte[])converter.ConvertTo(bitmap, typeof(byte[]));

                //string strname = FileUpload1.FileName.ToString();
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + strname);
                Connection.dbCommand("Update inventory set image='" + path + "' where ID='" + id_txt.Text + "'");
                System.Windows.Forms.MessageBox.Show("Successfully Saved.");

            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Please upload image.");
            }


            //    }

            //    protected void FileUpload1_Load(object sender, EventArgs e)
            //    {
            //        //BitmapImage currentBitmapImage = new BitmapImage();

            //        //currentBitmapImage.BeginInit();
            //        //currentBitmapImage.UriSource = imageUri;
            //        //currentBitmapImage.EndInit();



            //        //imgMain.Source = currentBitmapImage;

            //        //System.Drawing.Bitmap bmp = GetBitmap(imgMain);
            //        //bmp.Save(imagepath, System.Drawing.Imaging.ImageFormat.Jpeg);

        }
    }
}
