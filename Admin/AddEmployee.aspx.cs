using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd2 = new SqlCommand("insert into Employee values('" + txtEname.Text + "','" + txtMno.Text + "','" + txtEmail.Text + "','" + txtDesignation.Text + "','" + txtSalary.Text + "','" + txtCity.Text + "')", con);

        con.Open();

        int res = cmd2.ExecuteNonQuery();


        if (res > 0)
        {
            Response.Write("<script>alert('Employees Added  Successfully .');</script>");
            txtEname.Text = "";
            txtMno.Text = "";
            txtEmail.Text = "";
            txtDesignation.Text = "";
            txtSalary.Text = "";
            txtCity.Text = "";
        }
        else
        {
            Response.Write("<script>alert('UnSuccessfully .');</script>");

        }

        con.Close();

    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        txtEname.Text = "";
        txtMno.Text = "";
        txtEmail.Text = "";
        txtDesignation.Text = "";
        txtSalary.Text = "";
        txtCity.Text = "";
    }
}