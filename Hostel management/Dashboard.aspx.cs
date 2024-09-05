using System;
using System.Activities.Expressions;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Coal"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsUserLoggedIn())
        {
            Response.Redirect("Default.aspx");
            return;
        }
        

    }
    private bool IsUserLoggedIn()
    {
        return Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"];
    }

    
  


}