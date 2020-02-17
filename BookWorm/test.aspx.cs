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
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       /* private void showdata()
        {
            SqlConnection conn = new SqlConnection("Data Source=CO/SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select ProductImage,ProductID,ProductName,Price,Discount from ProductDetail", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }*/
    }
}