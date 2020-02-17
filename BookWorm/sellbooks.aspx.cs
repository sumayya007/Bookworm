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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/images/bookimg/" + FileUpload1.FileName));
            }
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            int sellerid=int.Parse(Session["userid"].ToString());
            SqlCommand obj1 = new SqlCommand("insert into bookdetails(title,author,price,category,condition,bookcover,discount,language,location,age,sellerid) values('" + title.Text + "','" + author.Text + "','" + price.Text.ToString() + "','" + category.SelectedItem.Value + "','" + condition.Text + "','" + FileUpload1.FileName + "','" + discount.Text.ToString() + "','" + language.SelectedItem.Value + "','" + location.Text + "','" + age.Text.ToString() + "','" + sellerid.ToString() + "')", conn);
            SqlCommand nd = new SqlCommand("select * from sellerdetails where sellername='" + Session["username"] + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(nd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count < 0)
            {
                Panel1.Visible = true;
                SqlCommand obj2 = new SqlCommand("insert into sellerdetails values('" + sellerid + "','" + sellername.Text + "','" + selleremail.Text + "','" + sellerphone.Text.ToString() + "','" + selleraddress.Text + "','" + sellerlocation.Text + "')", conn);
                obj2.ExecuteNonQuery();
            }
            obj1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("editsellerdetails.aspx");
        }

      
    }
}