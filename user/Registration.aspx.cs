using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {

        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        string value = gender.SelectedItem.Value.ToString();
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("insert into Registration (Name,EmailId,Birthdate,Gender,Mobileno ,Password) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtBdate.Text + "','" + value + "','" + txtMobileNo.Text + "','" + txtpassword.Text + "')", con);
        // SqlCommand cmd1 = new SqlCommand("insert into User_Login values('" + txtuserName.Text + "','" + txtpassword.Text + "')", con);

        con.Open();

        int res = cmd.ExecuteNonQuery();
        // int res1 = cmd1.ExecuteNonQuery();

        if (res > 0)
        {
            Response.Write("<script>alert('Registration Successfully .');</script>");
            //          string mob = txtMobileNo.Text;
            Response.Redirect("Start.aspx");
        }
        else
        {
            Response.Write("<script>alert('Registration UnSuccessfully .');</script>");

        }



        con.Close();


    }
}