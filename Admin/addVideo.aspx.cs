using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_addVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        String link = "<embed width = \"500\" height = \"500\" src = \"https://www.youtube.com/embed/" + TextBox2.Text + "\" frameborder=\" 0 \" allowfullscreen></embed>";
        String query = "insert into video(VideoName,VideoLink) values('" + TextBox1.Text + "','" + link + "')";
        String mycon = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label3.Text = "Video Has Been Saved";
        DataList1.DataBind();
  
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {

    }
}