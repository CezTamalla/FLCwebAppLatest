using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class products_alcohol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                BindListview();
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

        private void BindListview()
        {
            ListView1.DataSource = Connection.dbTable("SELECT ID, Name, image, Description, Min_Order FROM inventory WHERE Category='Finished Product' AND Product_Type='Alcohol'");
            ListView1.DataBind();
        }

        protected void viewDetails(object sender, EventArgs e)
        {
            ListViewDataItem lv = ((sender as Button).NamingContainer as ListViewDataItem);
            if (lv != null)
            {
                //int id = (int)ListView1.DataKeys[lv.DataItemIndex]["ID"];
                Image prodImg = (Image)lv.FindControl("prodImg");
                Label prodName = (Label)lv.FindControl("prodName");
                Label des = (Label)lv.FindControl("des");
                Label minOrd = (Label)lv.FindControl("minOrd");
                Session["prodName"] = prodName.Text;
                Session["des"] = des.Text;
                Session["minOrd"] = minOrd.Text;
                Session["prodImg"] = prodImg.ImageUrl;

                Response.Redirect("detailsPage.aspx");
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