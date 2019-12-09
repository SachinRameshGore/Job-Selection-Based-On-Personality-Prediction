using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user_Result : System.Web.UI.Page
{
    int a = 0;
    int b = 0;
    int c = 0;
    int sum = 0;
    int sum1 = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
       lblName.Text =  Session["user"].ToString();
        a = Convert.ToInt32(Session["Result"]);
        b = Convert.ToInt32(Session["Result1"]);
        c = Convert.ToInt32(Session["Personality"]);
        sum = a + b;

        string s = (Session["user"]).ToString();

        int personality = Convert.ToInt32(Session["Personality"]);
        sum1 = a + b + c;
        AptitudeResult.Text = "Aptitude Result :" + Convert.ToString(sum);
        Personalityresult.Text = "Personality Result : " + (Session["Personality"].ToString());
        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        SqlConnection con = new SqlConnection(connstr);
        //SqlCommand cmd1=new SqlCommand("select ")
        SqlCommand cmd = new SqlCommand("update  Registration set AptitudeResult='" + sum + "' where EmailId='" + s + "'", con);
        SqlCommand cmd1 = new SqlCommand("update  Registration set  PersonalityResult='" + personality + "' where EmailId='" + s + "'", con);
        SqlCommand cmd2 = new SqlCommand("update  Registration set Result='" + sum1 + "' where EmailId='" + s + "'", con);

        con.Open();

        int res = cmd.ExecuteNonQuery();
        int res1 = cmd1.ExecuteNonQuery();
        int res2 = cmd2.ExecuteNonQuery();

        //if (res > 0 && res1 > 0 && res2 > 0)
        //{
        //    Response.Write("<script>alert('Result Stored Successfully .');</script>");

        //}
        //else
        //{
        //    Response.Write("<script>alert(' UnSuccessful  .');</script>");

        //}



        con.Close();

    }
}