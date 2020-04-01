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
        protected void insert_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    Connection.dbCommand("Update inventory set image_filename='" + filename + "', image='" + bytes + "' where ID='" + id_txt.Text + "'");
                    System.Windows.Forms.MessageBox.Show("Successfully Saved.");

                }

                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}