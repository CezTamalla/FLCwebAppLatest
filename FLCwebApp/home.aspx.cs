using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;



namespace FLCwebApp
{
    public partial class home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindListview();
            }

        }
        private void BindListview()
        {
            ListView1.DataSource = Connection.dbTable("Select ID, Name, image, Description, Min_Order from inventory where Category='Finished Product'");
            ListView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView1.DataSource = Connection.dbTable("Select ID, Name, image, Description, Min_Order from inventory where Name LIKE '%" + DropDownList1.SelectedItem.Text + "%'");
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

       

    }
}

