using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Landing_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Cat2_GridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string primaryKey = DataBinder.Eval(e.Row.DataItem, "Id") + "";
            e.Row.Attributes.Add("onclick", "opennewwindow('" + primaryKey + "')");
            String url = "Item.aspx?";
            url += "Id=" + Server.HtmlEncode(primaryKey);
            Response.Redirect(url);

        }

    }
    protected void Cat1_GridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string primaryKey = DataBinder.Eval(e.Row.DataItem, "Id") + "";
            e.Row.Attributes.Add("onclick", "opennewwindow('" + primaryKey + "')");
            String url = "Item.aspx?";
            url += "Id=" + Server.HtmlEncode(primaryKey);
            Response.Redirect(url);

        }

    }
}