using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FLCwebApp
{
    public partial class FLC_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usertxt.Focus();

            if (!IsPostBack)
            {
                string from = Request.UrlReferrer.ToString();
                string here = Request.Url.AbsoluteUri.ToString();

                if (from != here)
                {
                    Session["page"] = Request.UrlReferrer.ToString();
                }
            }
        }
    
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            //DataTable dt = Connection.dbTable("SELECT * FROM flc.users;");
            //dt.Rows[2][1].ToString();
            //Connection.dbCommand("UPDATE `flc`.`users` SET `Username` = 'test' WHERE (`ID` = '00010');");

            if (Connection.verifyLogin(usertxt.Text, passtxt.Text))
            {
              
                object refUrl = Session["page"];
                if (refUrl != null)
                {
                    Session["userName"] = usertxt.Text;

                    Response.Redirect((string)refUrl);
                }
            }


            else
            {
                System.Windows.Forms.MessageBox.Show("Incorrect Username or Password, Please check.");
            }
        }

    }
}