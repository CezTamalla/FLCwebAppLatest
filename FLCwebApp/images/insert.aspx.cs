using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Data.OleDb;
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

                    string updateQuery = "Update inventory set image_filename='" + filename + "', content_type='" + contentType + "', image=? where ID='" + id_txt.Text + "'";

                    // OdbcConnection dbConnection = new OdbcConnection("DSN=FLC");
                    using (OdbcConnection con = new OdbcConnection("DSN=FLC"))
                    { 
                        // create an OdbcCommand and get its parameters
                        OdbcCommand command = new OdbcCommand(updateQuery);
                    OdbcParameterCollection parameters = command.Parameters;

                    // add "value" column to parameters, store the long string in it
                    parameters.Add("value", OdbcType.Image);
                        parameters["value"].Value = bytes;
                        con.Open();
                    // set the command's connection and execute the query
                        command.Connection = con;
                        command.ExecuteNonQuery();
                    }

                    // Connection.dbCommand("Update inventory set image_filename='" + filename + "', content_type='" + contentType + "', image='" + bytes + "' where ID='" + id_txt.Text + "'");
                    Label1.Visible = true;
                    Label1.Text = "Image Saved.";

                }

                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}