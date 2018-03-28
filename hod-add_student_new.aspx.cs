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
    public partial class add_student_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();

               

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            ddl_batch.Items.Insert(0, new ListItem("--Select Batch--", "0"));
           
           
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();

            //*****************checking student is already registrered**************
            SqlCommand cmd2 = new SqlCommand("select * from tbl_student where admission_no='" + txt_adm_no.Text + "'", con);
            cmd2.ExecuteNonQuery();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                Response.Write("<script  >alert('Already Registered')</script>");

            }


            else
            {
               
                String sql = "insert into [tbl_student] (batch_id,admission_no,admission_year,roll_no,student_name,gender,dob,address,phone,email,active) values('" + ddl_batch.SelectedItem.Value + "','" + txt_adm_no.Text + "','" + txt_adm_year.Text + "' ,'" + txt_roll_no.Text + "','" + txt_name.Text + "','" + rbl_gender.SelectedItem.Text + "','" + txt_dob.Text + "','" + txt_address.Text.Trim() + "','" + txt_phone.Text.Trim() + "','" + txt_email.Text + "',1)";
                SqlCommand name = new SqlCommand(sql, con);
                name.ExecuteNonQuery();
                Response.Write("<script  >alert('Succesfully Registered')</script>");
            }
        }

       

       

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            
           
            
            view_dept_dropdown();
            view_course_dropdown();
            view_batch_dropdown();
            txt_address.Text = "";
            txt_adm_no.Text = "";
            txt_adm_year.Text = "";
            txt_dob.Text = "";
            txt_email.Text = "";
            txt_name.Text = "";
            txt_phone.Text = "";
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

       
    }
}