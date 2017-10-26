using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }

    protected void Submit_Button_Click(object sender, EventArgs e)
    {
        int count = CheckCredentials();
        if (count > 0)
        {
            Response.Redirect("User_Landing_Page.aspx");
        }
        else
        {
            Error_Label.Text = "Username/Email and/or Password are not Valid";
        }
    }
    protected int CheckCredentials()
    {
        String connectionString = WebConfigurationManager.ConnectionStrings["GroceryStore"].ConnectionString;
        string selectSQL;
        selectSQL = "SELECT COUNT(*) FROM USERS ";
        selectSQL += "WHERE (Username = @firstval OR Email = @firstval) AND (Password = @passw)"; 
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        cmd.Parameters.AddWithValue("@firstval", Username_TextBox.Text);
        cmd.Parameters.AddWithValue("@passw", Password_TextBox.Text);
        SqlDataReader reader;
        // Try to open database and read information.
        int count = 0;
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                count = reader.GetInt32(0);
            }
        }
        catch(Exception err)
        {
            Error_Label.Text = err.Message;
        }
        finally
        {
            con.Close();
        }
        return count;
    }


    protected void Account_Creation_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Account_Creation_Page.aspx");
    }
}