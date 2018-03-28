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
    public partial class add_batch_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            viewgrid();
            
        }

        public void view_dept_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_department where active=1 ", con);     //starting code of Department dropdown
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_dept.DataSource = dt;
            dt.DefaultView.Sort = "dept_name";  //to sort dropdown values
            ddl_dept.DataTextField = "dept_name"; //to display department name
            ddl_dept.DataValueField = "dept_id";
            ddl_dept.DataBind();
            ddl_dept.Items.Insert(0, new ListItem("--Select Department-", "0"));

        }
        public void view_course_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + ddl_dept.SelectedItem.Value + "' and active=1" , con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_course.DataSource = dt;
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            dt.DefaultView.Sort = "course_name";  
            ddl_course.DataTextField = "course_name"; 
            ddl_course.DataValueField = "course_id";
            ddl_course.DataBind();
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
        }

        public void viewgrid() //course grid function 
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT tbl_department.dept_name as Department, tbl_course.course_name as Course,tbl_batch.batch_name as Batch FROM tbl_department,tbl_course,tbl_batch WHERE tbl_batch.active=1 and  tbl_department.dept_id=tbl_course.dept_id and tbl_course.course_id=tbl_batch.course_id order by tbl_department.dept_name , tbl_course.course_name ,tbl_batch.batch_name", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.ExecuteNonQuery();
           GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();

            //if(ddl_dept.SelectedIndex==1)
            //{

            //}
            SqlCommand cmd = new SqlCommand("select * from tbl_batch where course_id='" + ddl_course.SelectedItem.Value + "' and batch_name='" + txt_batch.Text + "' and active=1 ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script  >alert('Already Exist')</script>");

            }
            else
            {

                string sql = "insert into [tbl_batch] (batch_name,course_id,active) values('" + txt_batch.Text + "','" + ddl_course.SelectedItem.Value + "',1)";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery();
                
                Response.Write("<script  >alert('Successfully Inserted')</script>");


            }
        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_course.Visible = true;
            view_course_dropdown();
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_batch.Text = "";
            view_dept_dropdown();
            view_course_dropdown();
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}