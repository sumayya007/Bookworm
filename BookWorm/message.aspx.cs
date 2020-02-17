using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BookWorm
{
    public partial class message : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString();
            if (Session["msgid"] != null)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from sellerdetails where sellerid='" + Session["msgid"].ToString() + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        Label2.Text = row["sellername"].ToString();
                    }
                }
                Session["msgid"] = "";
                conn.Close();
            }
         
            Loadlist();
           
        }

        

        private void Loadlist()
        {
            conn.Open();
            SqlCommand obj = new SqlCommand("select * from friends where sendername='" + Label1.Text + "' or recievername='"+ Label1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }

        private void Loadchat()
        {
            conn.Open();
            DateTime date = DateTime.Now;
            string date3 = date.ToString("dd-MM-yyyy");
            if (Label2.Text != "")
            {
                string str = "select * from chat where Sender='" + Label1.Text + "' and Reciever='" + Label2.Text + "' or Sender='" + Label2.Text + "' and Reciever='" + Label1.Text + "' ORDER BY chatID";
                SqlCommand cmd = new SqlCommand(str, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList2.DataSource = ds;
                DataList2.DataBind();
            }
            conn.Close();

        }
       
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Loadchat();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lBtn = sender as LinkButton;
            string reciever = ((LinkButton)sender).CommandArgument.ToString();
            Label2.Text = reciever;
            Loadchat();
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            conn.Open();
            DateTime date = DateTime.Now;
            string date3 = date.ToString("dd-MM-yyyy");
            string time = date.ToString("HH:mm:ss");
            string query1 = "insert into chat(Sender,Reciever,Message,Date,Time) values('" + Label1.Text + "','" + Label2.Text + "','" + TextBox1.Text + "','" + date3 + "','" + time + "')";
            SqlCommand cmd = new SqlCommand(query1, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i >= 1)
            {
                TextBox1.Text = "";
                Loadchat();
            }
           
        }

        

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item)
            {
                LinkButton linkbutton = e.Item.FindControl("LinkButton1") as LinkButton;
                if (linkbutton.Text == Label1.Text)
                {

                    SqlCommand cmd = new SqlCommand("select * from friends where recievername='" + Label1.Text + "'", conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        foreach (DataRow row in dt.Rows)
                        {
                           linkbutton.Text = row["sendername"].ToString();
                            linkbutton.CommandArgument= row["sendername"].ToString();
                        }
                    }
                    
                  
                }
            }
        }
    }
}