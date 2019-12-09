using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


public partial class Admin_ShortlistCandidate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtsearch.Text = "";


    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        btnmail.Visible = true;
        int m = Convert.ToInt32(txtsearch.Text);

        string connstr = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        SqlDataAdapter sqlDa = new SqlDataAdapter("select * from Registration where Result >='" + m + "'", con);
        //DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        sqlDa.Fill(ds, "Registration");
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void btnmail_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
            String emailadd = row.Cells[3].Text;
            if (status.Checked)
            {
                sendcustomermail(emailadd);
            }

        }

    }

    private void sendcustomermail(String emailadd1)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("sachingore152@gmail.com", "9657877818");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Selction Process";
        msg.Body = "Congratulations.....!!!!!\n\n\nYou are selected for Interview round A\n\n\nThanks & Regards\n\nSJ Tech";
        string toaddress = emailadd1;
        msg.To.Add(toaddress);
        string fromaddress = "<sachingore152@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
        Response.Write("email sent to " + emailadd1);
       // Response.Write("<script>alert('email sent to " + emailadd1 .')</script>");
//)

    }

}