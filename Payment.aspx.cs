using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;

namespace Cosmetics_Project
{
    public partial class Payment : System.Web.UI.Page
    {
        public string a;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Reg;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label7.Text = Request.QueryString["Orderid"];
            a = Label7.Text.ToString();


        }

     


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Credit_Debit.aspx?a="+a);
        }
    }
}