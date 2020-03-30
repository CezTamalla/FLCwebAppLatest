using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.Security;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace FLCwebApp
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                if (Session["username"] != null)
                {
                    clientlbl.Text = "Signed in as" + " " +Session["username"].ToString();
                    HyperLinkorderStatus.Visible = true;
                    HyperLinkcart.Visible = true;
                    HyperLinkorderHistory.Visible = true;
                    logoutbtn.Visible = true;
                }
                else
                {
                    HyperLinklogin.Visible = true;
                }
                this.BindListView();
            }
        }

        private void BindListView()
        {
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

        protected void btn_send_Click(object sender, EventArgs e)
        {
            try
            {
                var from = "potestad29@gmail.com";
                var to = "potestad29@gmail.com";
                //const string Password = "g1ft3d262018";
                string mail_subject = txt_subject.Text.ToString();
                string mail_message = "From: " + txt_name + "\n";
                mail_message += "Email: " + txt_email + "\n";
                mail_message += "Company Name: " + txt_comname.Text + "\n";
                mail_message += "Message: " + txt_msg.Text + "\n";
                var smtp = new SmtpClient();
                {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential("potestad29@gmail.com", "g1ft3d262018");
                smtp.Timeout = 20000;
                }
                MailMessage message = new MailMessage(from, to, mail_subject, mail_message);
                message.IsBodyHtml = true;

                confirm.Text = "Thank you for your email";

                txt_name.Text = " ";
                txt_email.Text = " ";
                txt_comname.Text = " ";
                txt_subject.Text = " ";
                txt_msg.Text = " ";
               
            }
            catch (Exception)
            {
               confirm.Text = "Something went wrong! Please try again";
               confirm.ForeColor = Color.Red;
            }
        }
    }
}