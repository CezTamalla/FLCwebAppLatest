using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class detailsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection.dbCommand("SELECT inventory.ID, inventory.image, inventory.Name, inventory.Description, inventory.Min_Order FROM inventory INNER JOIN users");
            Image1.ImageUrl = Session["prodImg"].ToString();
            prodNamelbl.Text = Session["prodName"].ToString();
            desclbl.Text = Session["des"].ToString();
            minOrdlbl.Text = Session["minOrd"].ToString();
        }

        protected void order_Click(object sender, EventArgs e)
        {         
                var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                Connection.dbCommand("INSERT INTO clients_order (username, product_name, qty, date) values ('" + clientlbl.Text + "', '" + prodNamelbl.Text + desclbl.Text + "', '" + DropDownList1.SelectedItem.Text + "', '" + dateNow + "')");
            
        }
    }
}