using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookWorm
{
    public partial class admincredentials : System.Web.UI.Page
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
            SqlConnection scon = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            scon.Open();
            SqlCommand obj = new SqlCommand("select * from adminlogin where name='" + Session["username"].ToString() + "'", scon);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataSet ds = new DataSet();
            da.Fill(ds);
            String pass;
            pass = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (pass == TextBox1.Text)
            {
                if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
                    conn.Open();
                    SqlCommand obj1 = new SqlCommand("update adminlogin set password='" + TextBox2.Text + "' where name='" + Session["username"].ToString() + "'", conn);
                    SqlCommand obj2 = new SqlCommand("update register set password='" + TextBox2.Text + "' where name='" + Session["username"].ToString() + "'", conn);
                    obj1.ExecuteNonQuery();
                    obj2.ExecuteNonQuery();
                    conn.Close();

                    Label2.Text = "Password has been changed successfully!!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                }
                else
                {
                    Label2.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
                }
            }
            else
            {
                Label2.Text = "Invalid Username or Password - Cannot Change Password with User Authentication";

            }
        }
    }
}