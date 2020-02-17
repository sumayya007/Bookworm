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
    public partial class adminregusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindRepeater();
            }
        }
            private void BindRepeater()

            {
                
                SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
                SqlCommand obj = new SqlCommand("select * from register", conn);
                SqlDataAdapter da = new SqlDataAdapter(obj);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater1.DataSource = dt;

                Repeater1.DataBind();
            }
            protected void LinkButton1_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int userid = int.Parse((item.FindControl("Label1") as Label).Text);


            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("delete from register where userid='" + userid + "'", conn);
            obj.ExecuteNonQuery();
            Response.Write("<script>alert('Book deleted from Wishlist');</script>");
            BindRepeater();
        }
    }
}