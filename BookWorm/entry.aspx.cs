using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookWorm
{
    public partial class entry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            updatecounter();
        }
        private void updatecounter()
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=bookshopdata; Integrated Security=True";
            String updatedata = "Update viewcounter set viewcount=viewcount+1";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}