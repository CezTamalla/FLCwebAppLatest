using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FLCwebApp
{
    public partial class editCartItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["userName"] != null)
                {
                    clientlbl.Text = "Signed in as " + Session["userName"].ToString();
                    HyperLinkorderStatus.Visible = true;
                    HyperLinkcart.Visible = true;
                    HyperLinkorderHistory.Visible = true;
                    logoutbtn.Visible = true;
                }
                else
                {
                    HyperLinklogin.Visible = true;
                }


                Connection.dbCommand("SELECT * FROM cart");
                Image1.ImageUrl = Session["prodImgCart"].ToString();
                prodNamelbl.Text = Session["prodNameCart"].ToString();
                //DropDownList1.SelectedItem.Text = Session["qtyCart"].ToString();
                cartIDlbl.Text = Session["cartID"].ToString();
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

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void save_Click(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                if (DropDownList1.SelectedIndex > 0)
                {
                    string status = "Active";
                    Connection.dbCommand("UPDATE cart SET Qty='" + DropDownList1.SelectedItem.Text + "' WHERE Cart_ID='" + Session["cartID"].ToString() + "' AND Client_Username='" + Session["userName"].ToString() + "'");
                    MessageBox.Show("Change is saved.");
                    Response.Redirect("cart.aspx");
                }
                else
                {
                    MessageBox.Show("Please select quantity.");
                }
            }
            else
            {
                Response.Redirect("FLC_login.aspx");
            }
        }
    }
}