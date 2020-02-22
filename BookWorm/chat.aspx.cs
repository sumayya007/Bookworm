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
    public partial class chat : System.Web.UI.Page
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

                conn.Close();
            }

            // Loadlist();

        }



        private void Loadlist()
        {

            SqlCommand obj = new SqlCommand("select * from friends where sendername='" + Label1.Text + "' or recievername='" + Label1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //while (dt.Rows.Count < 0)
            //{

            //    if (dt.Rows[0]["sendername"].ToString() == Label1.Text)
            //    {
            //        LinkButton2.Text = dt.Rows[0]["recievername"].ToString();
            //    }
            //    else if (dt.Rows[0]["recievername"].ToString() == Label1.Text)
            //    {
            //        LinkButton2.Text = dt.Rows[0]["sendername"].ToString();
            //    }

            //}
            DataList1.DataSource = dt;
            DataList1.DataBind();

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
            if (TextBox1.Text != "" && Label2.Text != "")
            {
                string query = "insert into chat(Sender,Reciever,Message,Date,Time) values('" + Label1.Text + "','" + Label2.Text + "','" + TextBox1.Text + "','" + date3 + "','" + time + "')";
                SqlCommand cmd = new SqlCommand(query, conn);
                int i = cmd.ExecuteNonQuery();
                if (i >= 1)
                {
                    TextBox1.Text = "";

                }
                SqlCommand obj = new SqlCommand("select * from register where username='" + Label2.Text + "' ", conn);
                SqlDataAdapter da = new SqlDataAdapter(obj);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    int id = int.Parse(dt.Rows[0]["userid"].ToString());
                    SqlCommand obj2 = new SqlCommand("select * from friends where sendername='" + Label1.Text + "' and recievername='" + Label2.Text + "' or sendername='" + Label2.Text + "' and recievername='" + Label1.Text + "' ", conn);
                    SqlDataAdapter da2 = new SqlDataAdapter(obj2);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);

                    if (dt2.Rows.Count == 0)
                    {
                        //if (dt2.Rows[0]["recieverid"] != dt.Rows[0]["userid"]&& dt2.Rows[0]["senderid"] != dt.Rows[0]["userid"])
                        //{
                        SqlCommand obj3 = new SqlCommand("insert into friends values('" + Label1.Text + "','" + Label2.Text + "','" + Session["userid"] + "','" + Session["msgid"] + "')", conn);
                        obj3.ExecuteNonQuery();
                        //}
                    }
                    //else if (dt2.Rows.Count > 0)
                    //{
                    //    SqlCommand obj3 = new SqlCommand("insert into friends values('" + Label1.Text + "','" + Label2.Text + "','" + Session["userid"] + "','" + id + "')", conn);
                    //    obj3.ExecuteNonQuery();
                    //}
                    conn.Close();

                    Loadchat();
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Cannot send a blank message";
                }

            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item)
            {
                LinkButton linkbutton = e.Item.FindControl("LinkButton1") as LinkButton;
                string name = Session["username"].ToString();
                SqlCommand cmd = new SqlCommand("select * from friends where sendername='" + name + "'  or recievername='" + name + "'  ", conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    if (name == dt.Rows[0]["sendername"].ToString())
                    {
                        linkbutton.Text = dt.Rows[0]["recievername"].ToString();
                        linkbutton.CommandArgument = dt.Rows[0]["recievername"].ToString();
                    }
                    else if (name == dt.Rows[0]["recievername"].ToString())
                    {
                        linkbutton.Text = dt.Rows[0]["sendername"].ToString();
                        linkbutton.CommandArgument = dt.Rows[0]["sendername"].ToString();
                    }
                }
               


            }
        }
    }
}




        //    }
        //}
        //    //            int id1;
        //    //            int id2;
        //    //            foreach (DataRow row in dt.Rows)
        //    //            {

//    //                foreach (DataRow srow in dt2.Rows)
//    //                {
//    //                    id1 = int.Parse(srow["friendsid"].ToString());

//    //                    id2 = int.Parse(row["friendsid"].ToString());

//    //                    if (id1 != id2)
//    //                    {
//    //                        linkbutton.Text = row["sendername"].ToString();
//    //                    }
//    //                    else
//    //                    {
//    //                        linkbutton.Text = "";
//    //                    }

//    //                    // linkbutton.CommandArgument = row["sendername"].ToString();
//    //                }
//    //            }

//    //        }
//    //        conn.Close();
//    //    }
//    //}

//}