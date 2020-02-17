using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookWorm
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source = CO\\SQLEXPRESS; Initial Catalog = bookshopdata; Integrated Security = true");
            conn.Open();
            SqlCommand obj1 = new SqlCommand("insert into register(name,password,email,username) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", conn);
            SqlCommand obj2 = new SqlCommand("insert into login(username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            SqlCommand obj3 = new SqlCommand("insert into adminlogin(name,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            obj1.ExecuteNonQuery();
            obj2.ExecuteNonQuery();
            obj3.ExecuteNonQuery();

            Session["username"] = TextBox1.Text;
           
            Response.Redirect("login.aspx");
            conn.Close();

        }
    }
}