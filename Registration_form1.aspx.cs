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
    public partial class Registration_form1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-52KKSV4\\SQLExpress;Initial Catalog=Reg;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Create ConnectionString and Inser Statement

            string insertSql = "INSERT INTO Users (FirstName,LastName,Password,Email,City,Gender)"
            + " values (@FirstName,@LastName,@Password,@Email,@City,@Gender)";
            //Create SQL connection
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Reg;Integrated Security=True");

            //Create SQL Command And Sql Parameters

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertSql;

            SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
            firstName.Value = txtFirstName.Text.ToString();
            cmd.Parameters.Add(firstName);

            SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
            lastName.Value = txtLastName.Text.ToString();
            cmd.Parameters.Add(lastName);

            SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
            pwd.Value = txtPwd.Text.ToString();
            cmd.Parameters.Add(pwd);

            SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 200);
            email.Value = txtEmailID.Text.ToString();
            cmd.Parameters.Add(email);

            SqlParameter city = new SqlParameter("@City", SqlDbType.VarChar, 50);
            city.Value = txtAdress.Text.ToString();
            cmd.Parameters.Add(city);

            SqlParameter gender = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
            gender.Value = rdoGender.SelectedItem.ToString();
            cmd.Parameters.Add(gender);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "User Registration successful";
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in registering user";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);

            }
            finally
            {
                con.Close();
            }
        }
    }
           
        }