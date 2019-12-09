using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user_Presonalitytest : System.Web.UI.Page
{
    public static SqlConnection sqlconn;
    protected string PostBackStr;
    static int score = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn = new SqlConnection(@"Data Source=DELL\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        PostBackStr = Page.ClientScript.GetPostBackEventReference(this, "time");
      //  Panel1.Visible = true;
        if (IsPostBack)
        {
            string eventArg = Request["__EVENTARGUMENT"];
            if (eventArg == "time")
            {
                if (Convert.ToInt32(Session["counter"].ToString()) < 3)//10 is a counter which is used for 10 questions
                {

                    Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);
                    int k = Convert.ToInt32(Session["counter"]);
                    getQuestion(k);
                }
                else
                {
                   // Panel2.Visible = false;
                    //code for displaying after completting the exam, if you want to show the result then you can code here.
                }
            }
        }
        lblName.Text = "Name : " + Session["user"];
        if (!IsPostBack)
        {
            Session["counter"] = "1";
            int k = Convert.ToInt32(Session["counter"]);

            lblQuestion.Text = k.ToString();
            getQuestion(k);

        }

    }
    protected void BunNext_Click(object sender, EventArgs e)
    {

        getNextQuestion();

    }
    public void getQuestion(int no)
    {
        string str = "select * from Personality_Question where Question_id=" + no + "";
        SqlDataAdapter da2 = new SqlDataAdapter(str, sqlconn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "Personality_Question");
        if (ds2.Tables[0].Rows.Count > 0)
        {
            DataRow dtr;
            int i = 0;
            while (i < ds2.Tables[0].Rows.Count)
            {
                dtr = ds2.Tables[0].Rows[i];
                lblQuestion.Text = "Q." + Session["counter"].ToString() + "  " + dtr["Question"].ToString();
                RblOption.ClearSelection();
                RblOption.Items.Clear();

                RblOption.Items.Add(dtr["Disagree_Strongly"].ToString());
                RblOption.Items.Add(dtr["Disagree_Litle"].ToString());
                RblOption.Items.Add(dtr["Neither_agree_nor_disagree"].ToString());
                RblOption.Items.Add(dtr["Agree_Litle"].ToString());
                RblOption.Items.Add(dtr["Agree_Strongly"].ToString());
                i++;
            }
        }

    }
    public void getNextQuestion()
    {
        if (RblOption.SelectedIndex >= 0)
        {
            score += Convert.ToInt32(RblOption.SelectedValue);
            Session["Personality"] = Convert.ToString(score);
        }

        if (Convert.ToInt32(Session["counter"].ToString()) < 3)//20 is a counter which is used for 20 questions
        {
            if (RblOption.SelectedIndex >= 0)
            {
                //   score  += Convert.ToInt32(  RblOption.SelectedValue);
                txtScore.Text = score.ToString();
                lblScore.Text = "Score : " + Convert.ToString(score);

                //  Session["Personality"] = Convert.ToString(score);
            }

            Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);
            int k = Convert.ToInt32(Session["counter"]);

            getQuestion(k);

        }
        else
        {
            Response.Redirect("Result.aspx");
        //    Panel2.Visible = false;
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