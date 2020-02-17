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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindRepeater();
                if (Repeater1.Items.Count < 1)
                {
                    Panel1.Visible = true;
                    Repeater1.Visible = false;
                }

            }
            //SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            //conn.Open();
            //int sellerid = int.Parse(Session["userid"].ToString());
            //SqlCommand obj = new SqlCommand("select * from sellerdetails where sellerid='" + sellerid + "'", conn);
            //SqlDataAdapter da = new SqlDataAdapter(obj);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    GridView1.DataSource = dt;
            //    GridView1.DataBind();
            //    GridView1.Visible = true;
            //    Panel1.Visible = false;

            //}
            //else
            //{
            //    GridView1.Visible = false;
            //    Panel1.Visible = true;
            //}
        }
        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    GridView1.DataSource = SqlDataSource1;
        //    GridView1.DataBind();

        //}
        //protected void GridView1_RowCancelEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    GridView1.DataSource = SqlDataSource1;
        //    GridView1.DataBind();


        //}
        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    Label sellerid = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
        //    TextBox sellername= GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        //    TextBox selleremail = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        //    TextBox sellerphone = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
        //    TextBox selleraddress = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
        //    TextBox sellerlocation = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        //    SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
        //    conn.Open();
        //    SqlCommand obj = new SqlCommand("update sellerdetails set sellername='" + sellername.Text + "',selleremail='" + selleremail.Text + "',sellerphone='" + sellerphone.Text.ToString() + "',selleraddress='" + selleraddress.Text + "',sellerlocation='" + sellerlocation + "' where sellerid='"+sellerid.Text.ToString()+"'", conn);
        //    obj.ExecuteNonQuery();
        //    GridView1.DataSource = SqlDataSource1;
        //    GridView1.DataBind();
        //}
        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    Label sellerid = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
        //    SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
        //    conn.Open();
        //    SqlCommand obj = new SqlCommand("delete from sellerdetails where sellerid='" + sellerid.Text.ToString() + "'", conn);
        //    obj.ExecuteNonQuery();
        //    GridView1.DataSource = SqlDataSource1;
        //    GridView1.DataBind();

        //}
        private void BindRepeater()

        {
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            SqlCommand obj = new SqlCommand("select * from sellerdetails where sellername='"+Session["username"]+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count <= 0)
            { Label7.Visible = true;
                Label7.Text = "You did not enter any seller details.Kindly update for selling books";
            }
            Repeater1.DataSource = dt;

            Repeater1.DataBind();
        }
        protected void OnEditing(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = true;
            item.FindControl("LinkButton3").Visible = true;
            item.FindControl("LinkButton2").Visible = true;
            item.FindControl("LinkButton1").Visible = false;
            item.FindControl("TextBox1").Visible = true;
            item.FindControl("TextBox2").Visible = true;
            item.FindControl("TextBox3").Visible = true;
            item.FindControl("TextBox4").Visible = true;
            item.FindControl("TextBox5").Visible = true;
            
            item.FindControl("Label1").Visible = true;
            item.FindControl("Label2").Visible = false;
            item.FindControl("Label3").Visible = false;
            item.FindControl("Label4").Visible = false;
            item.FindControl("Label5").Visible = false;
            item.FindControl("Label6").Visible = false;
            


        }

        protected void OnDeleting(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int sellerid = int.Parse((item.FindControl("Label1") as Label).Text);


            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("delete from sellerdetails where sellerid='" + sellerid + "'", conn);
            obj.ExecuteNonQuery();
            BindRepeater();
        }

        protected void OnCancelling(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = false;
            item.FindControl("LinkButton3").Visible = false;
            item.FindControl("LinkButton2").Visible = true;
            item.FindControl("LinkButton1").Visible = true;
            item.FindControl("Label1").Visible = true;
            item.FindControl("Label2").Visible = true;
            item.FindControl("Label3").Visible = true;
            item.FindControl("Label4").Visible = true;
            item.FindControl("Label5").Visible = true;
            item.FindControl("Label6").Visible = true;
          
            item.FindControl("TextBox1").Visible = false;
            item.FindControl("TextBox2").Visible = false;
            item.FindControl("TextBox3").Visible = false;
            item.FindControl("TextBox4").Visible = false;
            item.FindControl("TextBox5").Visible = false;
            
        }

        protected void OnUpdating(object sender, EventArgs e)
        {

            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = false;
            item.FindControl("LinkButton3").Visible = false;
            item.FindControl("LinkButton2").Visible = false;
            item.FindControl("LinkButton1").Visible = true;
            item.FindControl("Label1").Visible = true;
            item.FindControl("Label2").Visible = true;
            item.FindControl("Label3").Visible = true;
            item.FindControl("Label4").Visible = true;
            item.FindControl("Label5").Visible = true;
            item.FindControl("Label6").Visible = true;
           
            item.FindControl("TextBox1").Visible = false;
            item.FindControl("TextBox2").Visible = false;
            item.FindControl("TextBox3").Visible = false;
            item.FindControl("TextBox4").Visible = false;
            item.FindControl("TextBox5").Visible = false;
            
            int tsellerid = int.Parse((item.FindControl("Label1") as Label).Text);
            string tname = (item.FindControl("TextBox1") as TextBox).Text.Trim();
            string temail = (item.FindControl("TextBox2") as TextBox).Text.Trim();
            int tphone = int.Parse((item.FindControl("TextBox3") as TextBox).Text.Trim());
            string taddress = (item.FindControl("TextBox4") as TextBox).Text.Trim();
            string tlocation= (item.FindControl("TextBox5") as TextBox).Text.Trim();
          
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("update sellerdetails set sellername='" + tname + "',selleremail='" + temail + "',sellerphone='" + tphone + "',selleraddress='" + taddress + "',sellerlocation='" + tlocation + "'", conn);
            BindRepeater();
        }
        protected void submit_Click(object sender, EventArgs e)
        {
           
        }
        }
}