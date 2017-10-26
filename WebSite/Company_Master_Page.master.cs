using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_Master_Page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((!IsPostBack))
        {
            Company_Title_Label.Text = Resources.hompage.strings.CompanyName;
        }
    }
}
