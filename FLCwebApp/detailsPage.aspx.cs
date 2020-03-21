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
    public partial class detailsPage : System.Web.UI.Page
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
           
        }
        
            Connection.dbCommand("SELECT inventory.ID, inventory.image, inventory.Name, inventory.Description, inventory.Min_Order FROM inventory INNER JOIN users WHERE inventory.Category='Finished Product'");
            Image1.ImageUrl = Session["prodImg"].ToString();
            prodNamelbl.Text = Session["prodName"].ToString();
            desclbl.Text = Session["des"].ToString();
            minOrdlbl.Text = Session["minOrd"].ToString();
        }

        protected void order_Click(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                if (DropDownList1.SelectedIndex > 0)
                {
                    var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                    Connection.dbCommand("INSERT INTO clients_order (ordered_by, product_name, qty, date) values ('" + clientlbl.Text + "', '" + prodNamelbl.Text + desclbl.Text + "', '" + DropDownList1.SelectedItem.Text + "', '" + dateNow + "')");
                    MessageBox.Show("Order has been sent. Please expect delivery within 1 to 2 weeks.");
                    Response.Redirect("home.aspx");
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

        protected void add_Click(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                if (DropDownList1.SelectedIndex > 0)
                {
                    Connection.dbCommand("INSERT INTO cart (Client_Username, prodName, Qty) values ('" + clientlbl.Text + "', '" + prodNamelbl.Text + desclbl.Text + "', '" + DropDownList1.SelectedItem.Text + "')");
                    MessageBox.Show("Item is added to cart");
                    Response.Redirect("home.aspx");
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