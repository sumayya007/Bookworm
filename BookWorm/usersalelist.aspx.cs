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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }

        }
        private void BindRepeater()

        { int sellerid = int.Parse(Session["userid"].ToString());
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            SqlCommand obj = new SqlCommand("select * from bookdetails where sellerid='"+sellerid+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
          
            Repeater1.DataBind();
        }
        /*protected void OnUpdate(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int bookid = int.Parse((item.FindControl("bookid") as Label).Text);
            int price = int.Parse((item.FindControl("price") as TextBox).Text.Trim());
            int discount = int.Parse((item.FindControl("discount") as TextBox).Text.Trim());
            string location = (item.FindControl("location") as TextBox).Text.Trim();
            hfbookid.Value = bookid.ToString();
            hfprice.Value = price.ToString();
            hfdiscount.Value = discount.ToString();
            hflocation.Value = location.ToString();
            SqlDataSource2.Update();
            this.BindRepeater();
        }
        protected void OnDelete(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int bookid = int.Parse(item.FindControl("bookid").ToString());
            hfbookid.Value = bookid.ToString();
            SqlDataSource2.Delete();
            this.BindRepeater();
        }
        
        
        protected void OnCancel(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            this.ToggleElements(item, false);
        }

        private void ToggleElements(RepeaterItem item, bool isEdit)
        {
            //toggle buttons
            item.FindControl("lnkEdit").Visible = !isEdit;
            item.FindControl("lnkUpdate").Visible = !isEdit;
            item.FindControl("lnkCancel").Visible = !isEdit;
            item.FindControl("lnkdelete").Visible = !isEdit;
            item.FindControl("price").Visible = !isEdit;
            item.FindControl("discount").Visible = !isEdit;
            item.FindControl("location").Visible = !isEdit;
           
        }*/

       

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
            item.FindControl("TextBox6").Visible = true;
            item.FindControl("TextBox7").Visible = true;
            item.FindControl("TextBox8").Visible = true;
            item.FindControl("TextBox9").Visible = true;
            item.FindControl("Label1").Visible = false;
            item.FindControl("Label2").Visible = false;
            item.FindControl("Label3").Visible = false;
            item.FindControl("Label4").Visible = false;
            item.FindControl("Label5").Visible = false;
            item.FindControl("Label6").Visible = false;
            item.FindControl("Label7").Visible = false;
            item.FindControl("Label8").Visible = false;
            item.FindControl("Label9").Visible = false;


        }

        protected void OnDeleting(object sender, EventArgs e)
         {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int bookid = int.Parse((item.FindControl("Label10") as Label).Text);


            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("delete from bookdetails where bookid='"+bookid+"'", conn);
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
            item.FindControl("Label7").Visible = true;
            item.FindControl("Label8").Visible = true;
            item.FindControl("Label9").Visible = true;
            item.FindControl("TextBox1").Visible = false;
            item.FindControl("TextBox2").Visible = false;
            item.FindControl("TextBox3").Visible = false;
            item.FindControl("TextBox4").Visible = false;
            item.FindControl("TextBox5").Visible = false;
            item.FindControl("TextBox6").Visible = false;
            item.FindControl("TextBox7").Visible = false;
            item.FindControl("TextBox8").Visible = false;
            item.FindControl("TextBox9").Visible = false;

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
            item.FindControl("Label7").Visible = true;
            item.FindControl("Label8").Visible = true;
            item.FindControl("Label9").Visible = true;
            item.FindControl("TextBox1").Visible = false;
            item.FindControl("TextBox2").Visible = false;
            item.FindControl("TextBox3").Visible = false;
            item.FindControl("TextBox4").Visible = false;
            item.FindControl("TextBox5").Visible = false;
            item.FindControl("TextBox6").Visible = false;
            item.FindControl("TextBox7").Visible = false;
            item.FindControl("TextBox8").Visible = false;
            item.FindControl("TextBox9").Visible = false;
            int tbookid = int.Parse((item.FindControl("Label10") as Label).Text);
            string ttitle = (item.FindControl("TextBox1") as TextBox).Text.Trim();
            string tauthor = (item.FindControl("TextBox2") as TextBox).Text.Trim();
            int tprice = int.Parse((item.FindControl("TextBox3") as TextBox).Text.Trim());
            string tcategory = (item.FindControl("TextBox4") as TextBox).Text.Trim();
            string tcondition = (item.FindControl("TextBox5") as TextBox).Text.Trim();
            int tdiscount = int.Parse((item.FindControl("TextBox6") as TextBox).Text.Trim());
            string tlanguage = (item.FindControl("TextBox7") as TextBox).Text.Trim();
            string tlocation = (item.FindControl("TextBox8") as TextBox).Text.Trim();
            int tage = int.Parse((item.FindControl("TextBox9") as TextBox).Text.Trim());
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=bookshopdata;Integrated Security=true;");
            conn.Open();
            SqlCommand obj = new SqlCommand("update bookdetails set title='"+ttitle+"',author='"+tauthor+ "',price='"+tprice+ "',category='"+tcategory+ "',condition='"+tcondition+"',discount='"+tdiscount+"',language='"+tlanguage+"',location='"+tlocation+"',age='"+tage+"' where bookid='" + tbookid+"'", conn);
            obj.ExecuteNonQuery();
            BindRepeater();
        }
    }
    

}  