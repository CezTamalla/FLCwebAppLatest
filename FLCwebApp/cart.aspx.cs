using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["userName"] != null)
                {
                    clientlbl.Text = Session["userName"].ToString();
                    HyperLinkorderStatus.Visible = true;
                    HyperLinkcart.Visible = true;
                    HyperLinkorderHistory.Visible = true;
                    logoutbtn.Visible = true;
                }
                else
                {
                    HyperLinklogin.Visible = true;
                }
                Connection.dbCommand("SELECT users.Username, users.Password, client.ID, client.Name, inventory.Name, inventory.Description, inventory.image," +
                "inventory.ID FROM users INNER JOIN client ON users.Name = client.Name INNER JOIN inventory WHERE inventory.Category = 'Finished Product'");

                this.BindGridView();
            }
        }
        public void LinkButton_Click(Object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();
            FormsAuthentication.SignOut();

            object refUrl = Session["page"];
            if (refUrl != null)
            {
                Session.Remove("userName");

                Response.Redirect((string)refUrl);
            }
        }

       private void BindGridView()
        {
            GridViewCart.DataSource = Connection.dbTable("SELECT * FROM cart");
            GridViewCart.DataBind();
        }
    }
}