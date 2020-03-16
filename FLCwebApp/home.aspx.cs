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
            MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=root;password=ctamalla;database=flc");
            MySqlCommand com = new MySqlCommand();

            con.Open();
            com = new MySqlCommand("Select Name, image, Description from inventory where Category='Finished Product'", con);
            com.ExecuteNonQuery();
            con.Close();
            MySqlDataAdapter sa = new MySqlDataAdapter(com);
            DataTable dt = new DataTable();
            sa.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            //Connection.dbCommand("Select Name, image, Description from inventory where Category='Finished Products'");
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

                Response.Redirect("details.aspx");
            }
            
        }
    }
}

