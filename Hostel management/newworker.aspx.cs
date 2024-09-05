using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class HostelRegistration : System.Web.UI.Page
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
            TableWorker();
            BindDdlShifts();


            if (Convert.ToString(Session["EditId"]) != "")
            {
                lblId.Text = Session["EditId"].ToString();
                GetDetail();
                
                Session["EditId"] = "";
            }
        }
    }
    protected void cancel(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "window.location='newworker.aspx';", true);
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


    protected void TableWorker()
    {
        string sqltxt = "SELECT WorkerID,Name, JobTitle, Shift, Address, MobileNumber, AlternativeMobileNumber, ";
        sqltxt += "BankName, AccountNumber, IFSCCode, BranchName, AadharCardNumber ";
        sqltxt += "FROM Workers ";
        sqltxt += "WHERE IsDeleted = 0";

        DataTable dt = new DataTable();

        SqlDataAdapter sda = new SqlDataAdapter(sqltxt, con);
        if (con.State == ConnectionState.Closed)
            con.Open();

        sda.Fill(dt);
        con.Close();

        GridViewWorkers.DataSource = dt;
        GridViewWorkers.DataBind();

        if (GridViewWorkers.Rows.Count > 0)
        {
            GridViewWorkers.HeaderRow.TableSection = TableRowSection.TableHeader;
            GridViewWorkers.FooterRow.TableSection = TableRowSection.TableFooter;
        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sql = "";

        if (lblId.Text == "0")
        {
            sql = "INSERT INTO Workers (Name, JobTitle, Shift, Address, MobileNumber, AlternativeMobileNumber, BankName, AccountNumber, IFSCCode, BranchName, AadharCardNumber, IsDeleted) ";
            sql += "VALUES ('" + txtName.Text + "', '" + txtJobTitle.Text + "', '" + ddlShift.SelectedValue + "', '" + txtAddress.Text + "', ";
            sql += "'" + txtMobile.Text + "', '" + txtAlternativeMobile.Text + "', ";
            sql += "'" + txtBankName.Text + "', '" + txtAccountNumber.Text + "', '" + txtIFSCCode.Text + "', '" + txtBranchName.Text + "', ";
            sql += "'" + txtAadhar.Text + "',  0)";
        }
        else
        {
            sql = "UPDATE Workers SET " +
    "Name = '" + txtName.Text + "', " +
    "JobTitle = '" + txtJobTitle.Text + "', " +
    "Shift = '" + ddlShift.SelectedValue + "', " +
    "Address = '" + txtAddress.Text + "', " +
    "MobileNumber = '" + txtMobile.Text + "', " +
    "AlternativeMobileNumber = '" + txtAlternativeMobile.Text + "', " +
    "BankName = '" + txtBankName.Text + "', " +
    "AccountNumber = '" + txtAccountNumber.Text + "', " +
    "IFSCCode = '" + txtIFSCCode.Text + "', " +
    "BranchName = '" + txtBranchName.Text + "', " +
    "AadharCardNumber = '" + txtAadhar.Text + "' " +
     //"UpdatedDate = GETDATE() " +
    "WHERE WorkerId = '" + lblId.Text + "'";

        }



        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "alert('record submitted successfully');window.location='newworker.aspx';", true);

    }
    protected void GetDetail()
    {
        string sqltxt = "select * from Workers WHERE WorkerID = '" + lblId.Text + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(sqltxt, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        adp.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtJobTitle.Text = dt.Rows[0]["JobTitle"].ToString();
            ddlShift.SelectedValue = dt.Rows[0]["Shift"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
            txtMobile.Text = dt.Rows[0]["MobileNumber"].ToString();
            txtAlternativeMobile.Text = dt.Rows[0]["AlternativeMobileNumber"].ToString();
            txtBankName.Text = dt.Rows[0]["BankName"].ToString();
            txtAccountNumber.Text = dt.Rows[0]["AccountNumber"].ToString();
            txtIFSCCode.Text = dt.Rows[0]["IFSCCode"].ToString();
            txtBranchName.Text = dt.Rows[0]["BranchName"].ToString();
            txtAadhar.Text = dt.Rows[0]["AadharCardNumber"].ToString();

        }
    }
    protected void btndeleted_click(object sender, EventArgs e)
    {
        Button btn = sender as Button;

        string sql = "";
        sql = "UPDATE Workers SET IsDeleted=1 WHERE WorkerID = '" + btn.CommandArgument + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redirect", "alert('record Deleted successfully');window.location='newworker.aspx';", true);
    }


    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["EditId"] = btn.CommandArgument;
        Response.Redirect("newworker.aspx");
    }
}