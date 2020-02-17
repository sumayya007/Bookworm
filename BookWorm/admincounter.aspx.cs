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
    public partial class admincounter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            findView();
            Label1.Text = Session["username"].ToString();
        }

        private void findView()
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=bookshopdata; Integrated Security=True";
            String myquery = "Select * from viewcounter";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            Label2.Text = ds.Tables[0].Rows[0]["viewcount"].ToString();
            con.Close();
        }
       
    }
}