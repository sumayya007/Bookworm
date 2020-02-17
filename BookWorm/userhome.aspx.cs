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
            Response.Redirect("chat.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Button btn = sender as Button;
            //Session["bookname"] = ((Button)sender).CommandName.ToString();
            //Session["id"] = ((Button)sender).CommandArgument.ToString();
            var btn = (Button)sender;
            int id = int.Parse(btn.CommandArgument);
            string bookname = btn.CommandName;
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("insert into wishlist values('" +Session["userid"] + "','" + bookname + "','" + id + "')", conn);
            obj.ExecuteNonQuery();
            //SqlCommand cmd = new SqlCommand("select * from bookdetails where bookid='"+id+"'", conn);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    foreach(DataRow row in dt.Rows)
            //    {


            //    }

            //}


            conn.Close();
            Response.Redirect("wishlist.aspx");
        }
    }

}