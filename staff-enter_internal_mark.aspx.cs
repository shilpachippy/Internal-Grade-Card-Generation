using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
namespace sample_internal
{
    public partial class staff_enter_internal_mark : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();

                

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            ddl_batch.Items.Insert(0, new ListItem("--Select Batch--", "0"));
            ddl_exam_title.Items.Insert(0, new ListItem("--Select Exam Title--", "0"));
            ddl_subject_code.Items.Insert(0, new ListItem("--Select Subject Code--", "0"));
            ddl_semester.Items.Insert(0, new ListItem("--Select Semester--", "0"));
        }
        public void view_dept_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_department ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_dept.DataSource = dt;
            dt.DefaultView.Sort = "dept_name";
            ddl_dept.DataTextField = "dept_name";
            ddl_dept.DataValueField = "dept_id";
            ddl_dept.DataBind();
            ddl_dept.Items.Insert(0, new ListItem("--Select Department-", "0"));

        }
        public void view_semester_dropdown()
        {
            ddl_semester.Items.Insert(0, new ListItem("--Select Semester-", "0"));
        }

        public void view_course_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + ddl_dept.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_course.DataSource = dt;

            dt.DefaultView.Sort = "course_name";
            ddl_course.DataTextField = "course_name";
            ddl_course.DataValueField = "course_id";
            ddl_course.DataBind();
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));

        }
        public void view_batch_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_batch where course_id='" + ddl_course.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_batch.DataSource = dt;

            dt.DefaultView.Sort = "batch_name";
            ddl_batch.DataTextField = "batch_name";
            ddl_batch.DataValueField = "batch_id";
            ddl_batch.DataBind();
            ddl_batch.Items.Insert(0, new ListItem("--Select Batch--", "0"));
        }
        public void view_exam_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_exam_details ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_exam_title.DataSource = dt;
            dt.DefaultView.Sort = "exam_title";
            ddl_exam_title.DataTextField = "exam_title";
            ddl_exam_title.DataValueField = "exam_id";
            ddl_exam_title.DataBind();
            ddl_exam_title.Items.Insert(0, new ListItem("--Select Exam Title-", "0"));

        }
        public void view_subject_code_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_subject_new ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_subject_code.DataSource = dt;
            dt.DefaultView.Sort = "course_no";
            ddl_subject_code.DataTextField = "course_no";
            ddl_subject_code.DataValueField = "subject_id";
            ddl_subject_code.DataBind();
            ddl_subject_code.Items.Insert(0, new ListItem("--Select Subject Code-", "0"));

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            view_subject_code_dropdown(); 
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            view_batch_dropdown();
            view_course_dropdown();
            view_dept_dropdown();
            view_semester_dropdown();
            view_exam_dropdown();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();

            //***************************checking mark_upload is already entererd**************************
            SqlCommand cmd = new SqlCommand("select * from tbl_internal_marks where batch_id='" + ddl_batch.SelectedItem.Value + "' and exam_id='" + ddl_exam_title.SelectedItem.Value + "' and subject_code='" + ddl_subject_code.SelectedItem.Text + "' and roll_no='"+txt_roll_no.Text+"' ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)   //checking exam_type,sem,student_id already exist,if yes show msg box and if no check subject and semester are matching
            {  //closing of cmd if
                Response.Write("<script  >alert('Mark already entered')</script>");

            }  //closing of cmd if
            else
            {    //opening of cmd else


                //********************checking ddl_semester snd subject are matching*****************
                SqlCommand cmd2 = new SqlCommand("select * from tbl_subject_new where sem='" + ddl_semester.SelectedItem.Text + "' and course_no='" + ddl_subject_code.SelectedItem.Text + "' ", con);
                cmd2.ExecuteNonQuery();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (dt2.Rows.Count > 0)  //checking semester and subject are matching,if yes 
                {  //opening of cmd2

                    ////*******************checking mark_upload less than or equals to 20************************

                    if (Convert.ToInt32(txt_mark.Text) <= 20)
                    {
                        string sql3 = "insert into [tbl_internal_marks] (batch_id,semester,exam_id,subject_code,roll_no,mark) values('" + ddl_batch.SelectedItem.Value + "','" + ddl_semester.SelectedItem.Text + "','" + ddl_exam_title.SelectedItem.Value + "','" + ddl_subject_code.SelectedItem.Text + "','" + txt_roll_no.Text + "','" + txt_mark.Text + "')";
                        SqlCommand cmd3 = new SqlCommand(sql3, con);
                        cmd3.ExecuteNonQuery();
                        Response.Write("<script  >alert('Sucessfully Inserted')</script>");
                    }
                    else
                    {  //opening of mark checking else

                        Response.Write("<script  >alert('Entered mark greater than ')</script>");

                    } //closing of mark checking else

                } //closing of cmd2 if

                else  ///cmd2 else
                {         //opening of cmd2 else

                    Response.Write("<script  >alert('Semester and subject not matching')</script>");

                }  //closing of cmd2 else



            }  //closing of cmd
               
            
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_mark.Text = "";
            view_subject_code_dropdown();
            txt_roll_no.Text = "";
        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_course_dropdown();

        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_batch_dropdown();
        }

        protected void ddl_batch_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_exam_dropdown();
            view_semester_dropdown();
        }


    }
}