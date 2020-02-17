using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BookWorm
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("select * from register where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["userid"] = dt.Rows[0]["userid"].ToString();
                Session["username"] = dt.Rows[0]["name"].ToString();
                if (dt.Rows[0]["name"].ToString() == "admin")
                {
                    Response.Redirect("admin.aspx");
                }
                Response.Redirect("userhome.aspx");

            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Sorry you have entered invalid username or password";
            }
        }
    }
}