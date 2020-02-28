using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FLCwebApp
{
    public partial class productDetails : System.Web.UI.Page
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
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}