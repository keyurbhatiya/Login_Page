using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string connectionString = (@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Data_Con.mdf;Integrated Security=True");
        // Replace with your actual connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string insertQuery = "INSERT INTO Users (Username, Email, Password) VALUES (@Username, @Email, @Password)";

            using (SqlCommand command = new SqlCommand(insertQuery, connection))
            {
                command.Parameters.AddWithValue("@Username", txtUsername.Text);
                command.Parameters.AddWithValue("@Email", txtEmail.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Text); // In a real application, you should hash the password

                command.ExecuteNonQuery();

                Response.Write("<script language='javascript'>window.alert('SIGN-IN SUCCESSFULLY');window.location='Login.aspx';</script>");
            }
        }

    }
   
}