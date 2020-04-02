using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class dispatching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.GridViewOrdersBind();
            }
        }

        private void GridViewOrdersBind()
        {
            GridViewOrders.DataSource = Connection.dbTable("SELECT * FROM clients_order");
            GridViewOrders.DataBind();
        }

        protected void ButtonAccept_Click(object sender, EventArgs e)
        {
            Label prodName, qty, orderby;
            DataTable dt = Connection.dbTable("SELECT * FROM clients_order");
            for (int i = 0; i < GridViewOrders.Rows.Count; i++)
            {
                prodName = GridViewOrders.Rows[i].FindControl("prodName") as Label;
                qty = GridViewOrders.Rows[i].FindControl("qty") as Label;
                orderby = GridViewOrders.Rows[i].FindControl("orderby") as Label;
                CheckBox check = GridViewOrders.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    string dialog = "Your order ";
                    string s = " is ";
                    string status = "On Process";
                    string pcs = " pieces ";
                    string sentby = "FLC";
                    var orderID = GridViewOrders.DataKeys[i]["order_id"];
                    DataRow dr = dt.Select(String.Format("order_id={0}", orderID)).First();
                    if (dr != null)
                    {
                        int quantity = Convert.ToInt32(qty.Text);
                        Session["productName"] = prodName.Text;
                        Session["orderedby"] = orderby.Text;
                        var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                        Connection.dbCommand("UPDATE clients_order SET Status='" + status + "' WHERE order_id='" + orderID + "'");
                        Connection.dbCommand("INSERT INTO message (Message, Sender, Recipient, Date_Sent) VALUES ('" + dialog + Session["productName"].ToString() + quantity + pcs + s + status + "', '" + sentby + "', '" + Session["orderedby"].ToString() + "', '" + dateNow + "')");

                    }
                }
            }

            GridViewOrdersBind();
        }

        protected void ButtonDeliver_Click(object sender, EventArgs e)
        {
            Label prodName, qty, orderby;
            DataTable dt = Connection.dbTable("SELECT * FROM clients_order");
            for (int i = 0; i < GridViewOrders.Rows.Count; i++)
            {
                prodName = GridViewOrders.Rows[i].FindControl("prodName") as Label;
                qty = GridViewOrders.Rows[i].FindControl("qty") as Label;
                orderby = GridViewOrders.Rows[i].FindControl("orderby") as Label;
                CheckBox check = GridViewOrders.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    string dialog = "Your order ";
                    string s = " is ";
                    string pcs = " pieces ";
                    string status = "Out for Delivery ";
                    string today = "today";
                    string sentby = "FLC";
                    var orderID = GridViewOrders.DataKeys[i]["order_id"];
                    DataRow dr = dt.Select(String.Format("order_id={0}", orderID)).First();
                    if (dr != null)
                    {
                        int quantity = Convert.ToInt32(qty.Text);
                        Session["productName"] = prodName.Text;
                        Session["orderedby"] = orderby.Text;
                        var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                        Connection.dbCommand("UPDATE clients_order SET Status='" + status + "' WHERE order_id='" + orderID + "'");
                        Connection.dbCommand("INSERT INTO message (Message, Sender, Recipient, Date_Sent) VALUES ('" + dialog + Session["productName"].ToString() + quantity + pcs + s + status + today + "', '" + sentby + "', '" + Session["orderedby"].ToString() + "', '" + dateNow + "')");
                    }
                }
            }

            GridViewOrdersBind();
        }

        protected void ButtonComplete_Click(object sender, EventArgs e)
        {
            Label prodName, qty, orderby;
            DataTable dt = Connection.dbTable("SELECT * FROM clients_order");
            for (int i = 0; i < GridViewOrders.Rows.Count; i++)
            {
                prodName = GridViewOrders.Rows[i].FindControl("prodName") as Label;
                qty = GridViewOrders.Rows[i].FindControl("qty") as Label;
                orderby = GridViewOrders.Rows[i].FindControl("orderby") as Label;
                CheckBox check = GridViewOrders.Rows[i].FindControl("CheckBox2") as CheckBox;
                if (check != null && check.Checked)
                {
                    string dialog = "Your order ";
                    string s = " is ";
                    string pcs = " pieces ";
                    string status = "Completed";
                    string sentby = "FLC";
                    var orderID = GridViewOrders.DataKeys[i]["order_id"];
                    DataRow dr = dt.Select(String.Format("order_id={0}", orderID)).First();
                    if (dr != null)
                    {
                        int quantity = Convert.ToInt32(qty.Text);
                        Session["productName"] = prodName.Text;
                        Session["orderedby"] = orderby.Text;
                        var dateNow = DateTime.Now.ToString("yyyy-MM-dd");
                        Connection.dbCommand("UPDATE clients_order SET Status='" + status + "' WHERE order_id='" + orderID + "'");
                        Connection.dbCommand("INSERT INTO message (Message, Sender, Recipient, Date_Sent) VALUES ('" + dialog + Session["productName"].ToString() + quantity + pcs + s + status + "', '" + sentby + "', '" + Session["orderedby"].ToString() + "', '" + dateNow + "')");

                    }
                }
            }

            GridViewOrdersBind();
        }

    }
}