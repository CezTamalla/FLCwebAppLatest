using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FLCwebApp
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Connection.dbCommand("SELECT users.ID, users.Name, users.Username, users.Password, users.User_Level, client.ID, client.Name, client.Address, client.Contact_Person, client.Contact_Number FROM users INNER JOIN client ON users.Name = client.Name");

        }


        protected void registerbtn_Click(object sender, EventArgs e)
        {
            string user_level = "Client";
            Connection.dbCommand("INSERT INTO users (Name, Username, Password, User_Level) VALUES ('" + storetxt.Text + "', '" + usertxt.Text + "', '" + confirmPasstxt.Text + "', '" + user_level + "')");

            Connection.dbCommand("INSERT INTO client (Address, Name, Contact_Person, Contact_Number) VALUES ('" + adresstxt.Text + "', '" + storetxt.Text + "', '" + contactPersontxt.Text + "', '" + contactNotxt.Text + "')");

            MessageBox.Show("Registered Successfuly.");

            Session["userName"] = usertxt.Text;
            Response.Redirect("Mainpage.aspx");
              
        }
    }
}