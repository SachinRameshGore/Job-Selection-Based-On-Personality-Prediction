using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string s = "systemdeveloper";
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select count (*) from Employee ", con);
        SqlCommand cmd1 = new SqlCommand("select Vacancy from Job where JobId='"+1+"' ", con);
        SqlCommand cmd2 = new SqlCommand("select Vacancy from Job where JobId='" + 4 + "' ", con);
       
        con.Open();
        String output = cmd.ExecuteScalar().ToString();
        String output1 = cmd1.ExecuteScalar().ToString();
        String output2 = cmd2.ExecuteScalar().ToString();
      
        soft.Text = output;
        softvacancy.Text = output1;
        test.Text = output2;
        con.Close();
    }
}