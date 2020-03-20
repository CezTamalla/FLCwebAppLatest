using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
                    clientlbl.Text = Session["userName"].ToString();
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
                var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                Connection.dbCommand("INSERT INTO clients_order (ordered_by, product_name, qty, date) values ('" + clientlbl.Text + "', '" + prodNamelbl.Text + desclbl.Text + "', '" + DropDownList1.SelectedItem.Text + "', '" + dateNow + "')");
                MessageBox.Show("Order has been sent. Please expect delivery within 1 to 2 weeks.");
                Response.Redirect("home.aspx");
        }
    }
}