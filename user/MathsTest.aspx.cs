using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_Sachin : System.Web.UI.Page
{
    public static SqlConnection sqlconn;
    protected string PostBackStr;
    static int score = 0;
    Random rnd = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn = new SqlConnection(@"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        PostBackStr = Page.ClientScript.GetPostBackEventReference(this, "time");
        // Panel1.Visible = true;
        if (IsPostBack)
        {
            string eventArg = Request["__EVENTARGUMENT"];
            if (eventArg == "time")
            {
                //getNextQuestion();
                if (Convert.ToInt32(Session["counter"].ToString()) < 10)//10 is a counter which is used for 10 questions
                {

                    //        Random rnd = new Random();
                    int k = rnd.Next(2, 26);

                    Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);

                    getQuestion(k);
                }
                else
                {
                    Response.Redirect("Presonalitytest.aspx");

                    // Panel2.Visible = false;
                    //code for displaying after completting the exam, if you want to show the result then you can code here.
                }
            }
        }
        lblName.Text = "Name : " + Session["user"];
        if (!IsPostBack)
        {
            int score = Convert.ToInt32(txtScore.Text);
            lblScore.Text = "Score : " + Convert.ToString(score);
            Session["counter"] = "1";
            //     Random rnd = new Random();
            int i = rnd.Next(2, 26);//Here specify your starting slno of question table and ending no.

            lblQuestion.Text = i.ToString();
            getQuestion(i);
            // cnt++;
        }

    }
    protected void BunNext_Click(object sender, EventArgs e)
    {
        getNextQuestion();
    }
    public void getQuestion(int no)
    {
        string str = "select * from MathsQuestion where QuestionId=" + no + "";
        SqlDataAdapter da2 = new SqlDataAdapter(str, sqlconn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "MathsQuestion");
        if (ds2.Tables[0].Rows.Count > 0)
        {
            DataRow dtr;
            int i = 0;
            while (i < ds2.Tables[0].Rows.Count)
            {
                dtr = ds2.Tables[0].Rows[i];
                Session["Answer"] = Convert.ToString(Convert.ToInt32(dtr["CorrectOption"].ToString()) - 1);
                lblQuestion.Text = "Q." + Session["counter"].ToString() + "  " + dtr["Question"].ToString();
                RblOption.ClearSelection();
                RblOption.Items.Clear();
                RblOption.Items.Add(dtr["Option1"].ToString());
                RblOption.Items.Add(dtr["Option2"].ToString());
                RblOption.Items.Add(dtr["Option3"].ToString());
                RblOption.Items.Add(dtr["Option4"].ToString());
                i++;
            }
        }

    }
    public void getNextQuestion()
    {
        // if (Convert.ToInt32(Session["counter"].ToString()) < 5)//20 is a counter which is used for 20 questions
        //{
        if (RblOption.SelectedIndex >= 0)
        {
            // int score = 0;
            if (Session["Answer"].ToString() == RblOption.SelectedIndex.ToString())
            {
                score = Convert.ToInt32(txtScore.Text) + 1;// 1 for mark for each question
                txtScore.Text = score.ToString();
                lblScore.Text = "Score : " + Convert.ToString(score);
            }
            Session["result1"] = Convert.ToString(score);//session
        }
        Session["result1"] = Convert.ToString(score);//session
        if (Convert.ToInt32(Session["counter"].ToString()) < 10)//20 is a counter which is used for 20 questions
        {
            //       Random rnd = new Random();
            int k = rnd.Next(2, 26);


            //lblQuestion.Text = i.ToString();
            Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);
            getQuestion(k);
        }
        //}

        else
        {
            //Response.Redirect("Result.aspx");
            /* int a = 0;
             int b = 0;
             // int c = 0;
             int sum = 0;
             a = Convert.ToInt32(Session["Result"]);
             b = Convert.ToInt32(Session["Result1"]);
             // c = Convert.ToInt32(Session["Personality"]);
             sum = a + b;
             if (sum > 3)
             {
                 Response.Redirect("PersonalityTest.aspx");
             }
             else
             {
                 Response.Redirect("Result.aspx");
             }*/
            Response.Redirect("Presonalitytest.aspx");

            //   Panel2.Visible = false;
            //code for displaying after completting the exam, if you want to show the result then you can code here.
        }
    }
    #region Connection Open
    public void ConnectionOpen()
    {
        try
        {
            if (sqlconn.State == ConnectionState.Closed) { sqlconn.Open(); }
        }
        catch (SqlException ex)
        {

        }
        catch (SystemException sex)
        {

        }
    }
    #endregion
    #region Connection Close
    public void ConnectionClose()
    {
        try
        {
            if (sqlconn.State != ConnectionState.Closed) { sqlconn.Close(); }
        }
        catch (SqlException ex)
        {

        }
        catch (SystemException sex)
        {

        }
    }
    #endregion

}