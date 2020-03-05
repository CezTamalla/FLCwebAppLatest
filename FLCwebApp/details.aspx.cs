using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FLCwebApp
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection.dbCommand("SELECT * FROM inventory");
            Image1.ImageUrl = Session["prodImg"].ToString();
            Label1.Text = Session["prodName"].ToString();
            Label2.Text = Session["des"].ToString();
            Label3.Text = Session["minOrd"].ToString();

        }
    }
}