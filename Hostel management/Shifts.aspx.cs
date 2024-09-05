using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cityies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Coal"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsUserLoggedIn())
        {
            Response.Redirect("Default.aspx");
            return;
        }
        Tablecities();
        //if (Convert.ToString(Session["EditId"]) != "")
        //{
        //    lblId.Text = Session["EditId"].ToString();
        //    GetDetail();
        //    Session["EditId"] = "";
        //}
    }
    private bool IsUserLoggedIn()
    {
        return Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"];
    }
    protected void Tablecities()
    {
        string sqltxt = "select * from  SHIFTS where IsDeleted = 0 ";
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(sqltxt, con);
        if (con.State == ConnectionState.Closed)
            con.Open();

        sda.Fill(dt);
        con.Close();
        GridViewCities.DataSource = dt;
        GridViewCities.DataBind();
        if (GridViewCities.Rows.Count > 0)
        {
            GridViewCities.HeaderRow.TableSection = TableRowSection.TableHeader;
            GridViewCities.FooterRow.TableSection = TableRowSection.TableFooter;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sql = "";
        string shiftTime = ddlShiftStartTime.SelectedItem.Text + " - " + ddlShiftEndTime.SelectedItem.Text;
        if (lblId.Text == "0")
        {
           

           
            sql = "INSERT INTO Shifts (ShiftTime, IsDeleted) " +
                  "VALUES ('" + shiftTime + "', 0)";

        }
        else
        {
            sql = " Update Shifts Set Shifts = '" + shiftTime + "' where ShiftID = '" + lblId.Text + "' ";
        }



        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "alert('record submitted successfully');window.location='Shifts.aspx';", true);

    }
    protected void GetDetail()
    {
        string sqltxt = "select * from Shifts where ShiftID = '" + lblId.Text + "' ";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(sqltxt, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        adp.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {

           
        }
    }
    protected void cancel(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "window.location='Shifts.aspx';", true);
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["EditId"] = btn.CommandArgument;
        Response.Redirect("cityies.aspx");
    }
    protected void btndeleted_click(object sender, EventArgs e)
    {
        Button btn = sender as Button;


        string sql = "";
        sql = "UPDATE Shifts SET IsDeleted=1 WHERE ShiftID = '" + btn.CommandArgument + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "alert('record Deleted successfully');window.location='Shifts.aspx';", true);
    }
}