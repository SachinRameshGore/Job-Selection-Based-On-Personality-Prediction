using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        //string uname=TxtEmailid.Text;
        //string pass=TxtPassword.Text;
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand("select count (*) from Registration where EmailId='" + TxtEmailid.Text + "'and Password='" + TxtPassword.Text + "' ", con);
        con.Open();
        String output = cmd.ExecuteScalar().ToString();

        if (output == "1")
        {
          /*  if (Request.Cookies["authcookie"] != null)
            {
                if (Request.Cookies["authcookie"]["username"] ==uname && Request.Cookies["authcookie"]["Passsword"] ==pass )
                {
                    Response.Redirect("sachin.aspx");
                }
                //else
                //{
                //    Response.Redirect("sachin2.aspx");
                //}
            }
            else
            {

                Response.Cookies["authcookie"]["username"] = TxtEmailid.Text;
                Response.Cookies["authcookie"]["Password"] = TxtPassword.Text;
                Response.Cookies["authcookie"].Expires = DateTime.Now.AddDays(30);*/
                Session["user"] = TxtEmailid.Text;
                Response.Redirect("InstructionPage.aspx");
          //  }
        }
        else
        {
            Response.Write("<script>alert('Username or Password are Wrong .');</script>");
            TxtPassword.Text = "";
            TxtEmailid.Text = "";
           

        }
        con.Close();

    }

    }
