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
    public partial class bookdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
            Label1.Text = Session["username"].ToString();
            
        }

        private void BindRepeater()
        { int bookid=int.Parse(Request.QueryString["bookid"]);
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            SqlCommand obj = new SqlCommand("select * from bookdetails where bookid='"+bookid+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;

            Repeater1.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lBtn = sender as LinkButton;
            string id = ((LinkButton)sender).CommandArgument.ToString();
            Session["msgid"] = id;
            Response.Redirect("chat.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var btn = (Button)sender;
            string location = btn.CommandName.ToString();
            Response.Redirect("http://www.googlemaps.com/maps?q=" + location);
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            var imgbtn = (ImageButton)sender;
            int bookid = int.Parse(imgbtn.CommandArgument);
            string bookname = imgbtn.CommandName;
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();

            SqlCommand obj = new SqlCommand("select * from wishlist where name='" + Session["username"] + "' and bookid='" + bookid + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                imgbtn.ImageUrl = "images/wishtrue.png";
                imgbtn.Enabled = false;
            }
            else
            {
                // lbb.Text = "Click Heart to Add in Wishlist";
                imgbtn.ImageUrl = "images/wishtrue.png";

                SqlCommand obj2 = new SqlCommand("insert into wishlist values('" + Session["userid"] + "','" + bookname + "','" + bookid + "')", conn);
                obj2.ExecuteNonQuery();

            }

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var imgbtn=((ImageButton)e.Item.FindControl("ImageButton1"));
           
            int bookid = int.Parse(imgbtn.CommandArgument);
            string bookname = imgbtn.CommandName;
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("select * from wishlist where wishid='" + Session["userid"] + "' and bookid='" + bookid + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                imgbtn.ImageUrl = "images/wishtrue.png";
                imgbtn.Enabled = false;
            }
            else
            {
                // lbb.Text = "Click Heart to Add in Wishlist";
                imgbtn.ImageUrl = "images/wishfalse.png";

            }
        }
    }
}