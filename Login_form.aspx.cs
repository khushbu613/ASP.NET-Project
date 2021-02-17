using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Cosmetics_Project
{
    public partial class Login_form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-52KKSV4\\SQLExpress;Initial Catalog=Reg;Integrated Security=True");
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open(); SqlCommand cmd = new SqlCommand("select * from Users where Email =@Email and Password=@password", con);
            cmd.Parameters.AddWithValue("@Email", user_email_login.Text); cmd.Parameters.AddWithValue("@password", Pwdlogin.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd); DataTable dt = new DataTable(); da.Fill(dt);
            if (dt.Rows.Count > 0) 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Login Successful')</script>");
            }
            else 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email Id and Password')</script>");
            }
            
        }
        }
    }
