using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Coal"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsUserLoggedIn())
        {
            Response.Redirect("Default.aspx");
            return;
        }
        if (!IsPostBack)
        {
            
            BindDdlShifts();
        }
    }
    protected void cancel(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "window.location='HostelRegistration.aspx';", true);
    }
    private bool IsUserLoggedIn()
    {
        return Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"];
    }
    protected void BindDdlShifts()
    {
        string sqltxt = "select * from SHIFTS where IsDeleted = 0 ";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(sqltxt, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        adp.Fill(dt);
        con.Close();
        ddlShift.DataSource = dt;
        ddlShift.DataBind();

    }
}