using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace BookWorm
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = SqlDataSource1;
                Repeater1.DataBind();

            }

            Label1.Text = Session["username"].ToString();



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource2;
            Repeater1.DataBind();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource3;
            Repeater1.DataBind();

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.Value == "Low to High")
            {
                Repeater1.DataSource = SqlDataSource4;


            }
            else if (DropDownList2.SelectedItem.Value == "High to Low")
            {
                Repeater1.DataSource = SqlDataSource5;


            }
            Repeater1.DataBind();
        }

        //protected void Repeater1_ItemCommand(object source,RepeaterCommandEventArgs e)
        // {
        //     int sellerid;

        //     if(int.TryParse((string)e.CommandArgument,out sellerid))
        //     {
        //          Session["msgid"]= sellerid;


        //     }
        // }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lBtn = sender as LinkButton;
            string id = ((LinkButton)sender).CommandArgument.ToString();
            Session["msgid"] = id;
            Response.Redirect("chat.aspx?seller="+id);
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton lBtn1 = sender as LinkButton;
            string id = ((LinkButton)sender).CommandArgument.ToString();
            
            Response.Redirect("bookdetails.aspx?bookid=" + id);
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
           
                var imgbtn = ((ImageButton)e.Item.FindControl("ImageButton1"));

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

