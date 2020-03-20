using System;
using System.Collections.Generic;
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
                if (Session["userName"] != null)
                {
                    clientlbl.Text = Session["userName"].ToString();
                    HyperLinkorderStatus.Visible = true;
                    HyperLinkcart.Visible = true;
                    HyperLinkorderHistory.Visible = true;
                    logoutbtn.Visible = true;
                }
                else
                {
                    HyperLinklogin.Visible = true;
                }

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
    }
}