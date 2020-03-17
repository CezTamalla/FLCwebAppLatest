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
        }
    
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            //DataTable dt = Connection.dbTable("SELECT * FROM flc.users;");
            //dt.Rows[2][1].ToString();
            //Connection.dbCommand("UPDATE `flc`.`users` SET `Username` = 'test' WHERE (`ID` = '00010');");
          
            if (Connection.verifyLogin(usertxt.Text,passtxt.Text))
            {
                if (usertxt.Text == "Client" && passtxt.Text=="1111")
                {
                    Session["userName"] = usertxt.Text;
                    Response.Redirect("home.aspx");
                }
            }

           
            else
               System.Windows.Forms.MessageBox.Show("Incorrect Username or Password, Please check.");
        }

    }
}