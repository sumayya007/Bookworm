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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                        
                
                    
                    //String query = "insert into wishlist values('" + Session["userid"] + "','" + Request.QueryString["title"].ToString() + "''" + int.Parse(Request.QueryString["bookid"].ToString()) + "')";
                    //String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=bookshopdata; Integrated Security=true";
                    //SqlConnection con = new SqlConnection(mycon);
                    //con.Open();
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = query;
                    //cmd.Connection = con;
                    //cmd.ExecuteNonQuery();
                    BindRepeater();
                    
                

            }

            Label1.Text = Session["username"].ToString();
           
        }
        private void BindRepeater()

        {
            int sellerid = int.Parse(Session["userid"].ToString());
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            SqlCommand obj = new SqlCommand("select * from bookdetails where bookid IN(select bookid from wishlist where wishid = '" + Session["userid"].ToString() + "')", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;

            Repeater1.DataBind();
        }
        protected void OnDeleting(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int bookid = int.Parse((item.FindControl("Label10") as Label).Text);


            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("delete from wishlist where bookid='" + bookid + "' and wishid='"+Session["userid"]+"'", conn);
            obj.ExecuteNonQuery();
            Response.Write("<script>alert('Book deleted from Wishlist');</script>");
            BindRepeater();
        }

       
    }
}