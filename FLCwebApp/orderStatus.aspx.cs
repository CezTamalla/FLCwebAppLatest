using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class orderStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                BindGridViewOrderStatus();
                if (Session["userName"] != null)
                {
                    clientlbl.Text = "Signed in as " + Session["userName"].ToString();
                    recipientlbl.Text = Session["userName"].ToString();
                    HyperLinkorderStatus.Visible = true;
                    HyperLinkcart.Visible = true;
                    HyperLinkorderHistory.Visible = true;
                    logoutbtn.Visible = true;
                    notifPanel.Visible = true;
                    GridViewMessageBind();
                    DataBind();

                }
                else
                {
                    HyperLinklogin.Visible = true;
                }

            }
        }

        protected void GridViewMessage_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMessage.PageIndex = e.NewPageIndex;
            DataBind();
        }

        private void GridViewMessageBind()
        {
            GridViewMessage.DataSource = Connection.dbTable("SELECT Date_Sent, Message FROM message WHERE Recipient='" + recipientlbl.Text + "' ORDER BY ID DESC");
            GridViewMessage.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            notifPanel.Visible = true;
            DataTable dt = Connection.dbTable("SELECT * FROM message WHERE Recipient='" + Session["userName"].ToString() + "' ORDER BY ID DESC");
            if (dt.Rows.Count > 0)
            {
                datelbl.Text = dt.Rows[0]["Date_Sent"].ToString();
                msglbl.Text = dt.Rows[0]["Message"].ToString();
            }
        }

        private void BindGridViewOrderStatus()
        {
            GridViewOrderStatus.DataSource = Connection.dbTable("SELECT * FROM clients_order WHERE ordered_by='" + Session["userName"].ToString() + "' AND date BETWEEN DATE(NOW()) - INTERVAL 14 DAY AND DATE(NOW())");
            GridViewOrderStatus.DataBind();

            int rowCount = GridViewOrderStatus.Rows.Count;
            if (rowCount < 1)
            {
                nothingTodisplay.Text = "No Pending Orders.";
                HyperLinkShopNow.Visible = true;
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

        protected void GridViewOrderStatus_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            for (int i = 0; i <= GridViewOrderStatus.Rows.Count - 1; i++)
            {
                Label status = (Label)GridViewOrderStatus.Rows[i].FindControl("statuslbl");

                if (status.Text == "Pending")
                {
                    GridViewOrderStatus.Rows[i].Cells[5].ForeColor = Color.Red;
                }

                if (status.Text == "On Process")
                {
                    GridViewOrderStatus.Rows[i].Cells[5].ForeColor = Color.Orange;
                }

                if (status.Text == "Out for Delivery")
                {
                    GridViewOrderStatus.Rows[i].Cells[5].ForeColor = Color.Green;
                }

                if (status.Text == "Completed")
                {
                    GridViewOrderStatus.Rows[i].Cells[5].ForeColor = Color.Yellow;
                }
            }
        }

        public void LBproductsAll_Click(Object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        public void LBalcohol_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-alcohol.aspx");
        }

        public void LBglassCleaner_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-glassCleaner.aspx");
        }

        public void LBlaundryBleach_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-laundryBleach.aspx");
        }

        public void LBtbc_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-tbc.aspx");
        }

        public void LBtoiletDeo_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-toiletDeo.aspx");
        }

        public void LBfood_Click(Object sender, EventArgs e)
        {
            Response.Redirect("products-food.aspx");
        }
    }
}