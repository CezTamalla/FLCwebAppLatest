using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

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

                //Connection.dbCommand("SELECT users.Username, users.Password, client.ID, client.Name, inventory.Name, inventory.Description, inventory.image, inventory.ID FROM users INNER JOIN client ON users.Name = client.Name INNER JOIN inventory WHERE inventory.Category = 'Finished Product'");

                BindGridView();
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
            GridViewCart.DataSource = Connection.dbTable("SELECT * FROM cart WHERE Client_Username='" + Session["userName"].ToString() + "' AND Status='Active'");
            GridViewCart.DataBind();

            int rowCount = GridViewCart.Rows.Count;
            if (rowCount < 1)
            {
                nothingTodisplay.Text = "Cart is empty.";
                HyperLinkShopNow.Visible = true;
                ButtonRemove.Visible = false;
                ButtonEdit.Visible = false;
                ButtonOrder.Visible = false;
            }
        }

        protected void ButtonRemove_Click(object sender, EventArgs e)
        {
            DataTable dt = Connection.dbTable("SELECT * FROM cart");
            for (int i = 0; i < GridViewCart.Rows.Count; i++)
            {
                CheckBox check = GridViewCart.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    string status = "Removed";
                    var cartID = GridViewCart.DataKeys[i]["Cart_ID"];
                    DataRow dr = dt.Select(String.Format("Cart_ID={0}", cartID)).First();
                    if (dr != null)
                    {
                        Connection.dbCommand("UPDATE cart SET Status='" + status + "' WHERE Cart_ID='" + cartID + "' AND Client_Username='" + Session["userName"].ToString() + "'");
                    }
                }
            }

            BindGridView();
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            Label qtyLbl, prodNameLbl, clientIDlbl, cartIDlbl;
            Image prodImg;
            DataTable dt = Connection.dbTable("SELECT * FROM cart");
            for (int i = 0; i < GridViewCart.Rows.Count; i++)
            {
                prodImg = GridViewCart.Rows[i].FindControl("prodImg") as Image;
                clientIDlbl = GridViewCart.Rows[i].FindControl("clientID") as Label;
                cartIDlbl = GridViewCart.Rows[i].FindControl("cartID") as Label;
                qtyLbl = GridViewCart.Rows[i].FindControl("qty") as Label;
                prodNameLbl = GridViewCart.Rows[i].FindControl("prodName") as Label;
                CheckBox check = GridViewCart.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    Session["clientIDcart"] = clientIDlbl.Text;
                    Session["cartID"] = cartIDlbl.Text;
                    Session["qtyCart"] = qtyLbl.Text;
                    Session["prodNameCart"] = prodNameLbl.Text;
                    Session["prodImgCart"] = prodImg.ImageUrl;
                    var cartID = GridViewCart.DataKeys[i]["Cart_ID"];
                    DataRow dr = dt.Select(String.Format("Cart_ID={0}", cartID)).First();
                    if (dr != null)
                    {
                        Response.Redirect("editCartItem.aspx");
                    }
                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Please select item/s.");
                    }
                }
            }

            BindGridView();
        }

        protected void ButtonOrder_Click(object sender, EventArgs e)
        {
            Label qtyLbl, prodNameLbl;
            DataTable dt = Connection.dbTable("SELECT * FROM cart");
            for (int i = 0; i < GridViewCart.Rows.Count; i++)
            {
                qtyLbl = GridViewCart.Rows[i].FindControl("qty") as Label;
                prodNameLbl = GridViewCart.Rows[i].FindControl("prodName") as Label;
                CheckBox check = GridViewCart.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    string status = "Ordered";
                    var cartID = GridViewCart.DataKeys[i]["Cart_ID"];
                    DataRow dr = dt.Select(String.Format("Cart_ID={0}", cartID)).First();
                    if (dr != null)
                    {
                        Session["prodName"] = prodNameLbl.Text;
                        int qty = Convert.ToInt32(qtyLbl.Text);
                        var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                        Connection.dbCommand("INSERT INTO clients_order (ordered_by, product_name, qty, date) values ('" + Session["userName"].ToString() + "', '" + Session["prodName"].ToString() + "', '" + qty + "', '" + dateNow + "')");
                        Connection.dbCommand("UPDATE cart SET Status='" + status + "' WHERE Cart_ID='" + cartID + "' AND Client_Username='" + Session["userName"].ToString() + "'");
                        System.Windows.Forms.MessageBox.Show("Order has been sent. Please expect delivery within 1 to 2 weeks.");
                    }
                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Please select item/s.");
                    }
                }
            }

            BindGridView();
        }
    }
}