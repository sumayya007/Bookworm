using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookWorm
{
    public partial class adminemail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = Session["username"].ToString();

            }
            Label2.Text = "";

        }

      

        protected void submit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue== "Subscribed users")
            {
                SqlConnection scon = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
                scon.Open();
                SqlCommand obj = new SqlCommand("select * from register where userid='"+1+"'", scon);
                SqlDataAdapter da = new SqlDataAdapter(obj);
                DataSet dt = new DataSet();
                da.Fill(dt);
                int totalemailsent = 0;
                string subject = "The Book Shop";
                
               
                int rowcounter = dt.Tables[0].Rows.Count;
                int i = 0;
                for (i = 0; i < rowcounter; i++)
                {

                    sendemailtosub(dt.Tables[0].Rows[i]["email"].ToString(), subject, TextBox1.Text);
                    totalemailsent = totalemailsent + 1;

                }
                Label2.Visible = true;
                Label2.Text = "Total number of " + totalemailsent + " emails sent to Subscribers Successfully";


                scon.Close();
              
               
               
            }
            else if(DropDownList1.SelectedValue == "Registered users")
            {
                SqlConnection scon = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
                scon.Open();
                SqlCommand obj = new SqlCommand("select * from register", scon);
                SqlDataAdapter da = new SqlDataAdapter(obj);
                DataSet dt = new DataSet();
                da.Fill(dt);
                int totalemailsent = 0;
                string subject = "The Book Shop";


                int rowcounter = dt.Tables[0].Rows.Count;
                int i = 0;
                for (i = 0; i < rowcounter; i++)
                {

                    sendemailtosub(dt.Tables[0].Rows[i]["email"].ToString(), subject, TextBox1.Text);
                    totalemailsent = totalemailsent + 1;

                }
                Label2.Visible = true;
                Label2.Text = "Total number of " + totalemailsent + " emails sent to Subscribers Successfully";


                scon.Close();
            }
        }
        public void sendemailtosub(String email, String subject, String message)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("sumayya.kareem6@gmail.com", "rahmaniraheem");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = subject;
            msg.Body = "Dear subscriber" + "\n\n\n" + message + "\n\nThanks & Regards\nThe Team";
            string toaddress = email;
            msg.To.Add(toaddress);
            string fromaddress = "The Book Shop <sumayya.kareem6@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }

        
        

    }
}