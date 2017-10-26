using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class User_Account_Creation_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }

    protected void Submit_Button_Click(object sender, EventArgs e)
    {
        String connectionString = WebConfigurationManager.ConnectionStrings["GroceryStore"].ConnectionString;
        string insertSQL = "INSERT INTO USERS (Username, Email, Address,Password, Phone)";
        insertSQL += "VALUES (@usern, @email, @address, @passw, @phone)";
        // Define the ADO.NET objects.
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);
        cmd.Parameters.AddWithValue("@usern", Username_TextBox.Text);
        cmd.Parameters.AddWithValue("@passw", Password_TextBox.Text);
        cmd.Parameters.AddWithValue("@email", Email_TextBox.Text);
        cmd.Parameters.AddWithValue("@address", Address_TextBox.Text);
        cmd.Parameters.AddWithValue("@phone", Phone_TextBox.Text);
        // Try to open database and write information.
        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            //Email,Phone and Username are set as unique.Some constraints might have been violated
            Error_Label.Text = "Error Inserting Record... Email, Username or Phone number already in Use";
            Error_Label.Text += err.Message;
        }
        finally
        {
            if(added > 0)
            {
                Response.Redirect("User_Account_Creation_Success.Aspx");
            }
        }
    }
}