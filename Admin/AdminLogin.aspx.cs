using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select count (*) from Admin_Login where AdminUsername='" + TxtUsername.Text + "'and AdminPassWord='" + TxtPassword.Text + "' ", con);
        con.Open();
        String output = cmd.ExecuteScalar().ToString();

        if (output == "1")
        {
           // Session["user"] = TxtUsername.Text;
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Username or Password are Wrong .');</script>");

        }
        con.Close();
    }

    }
