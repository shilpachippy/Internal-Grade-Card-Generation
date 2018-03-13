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
    public partial class hod_add_staff_advisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();
                view_role_dropdown();
                

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            ddl_batch.Items.Insert(0, new ListItem("--Select Batch--", "0"));
            ddl_faculty.Items.Insert(0, new ListItem("--Select Faculty--", "0"));
            ddl_role.Items.Insert(0, new ListItem("--Select Role--", "0"));
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
        public void view_faculty_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_faculty where dept_id='"+ddl_dept.SelectedItem.Value+"' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_faculty.DataSource = dt;
            dt.DefaultView.Sort = "faculty_name";
            ddl_faculty.DataTextField = "faculty_name";
            ddl_faculty.DataValueField = "faculty_id";
            ddl_faculty.DataBind();
            ddl_faculty.Items.Insert(0, new ListItem("--Select Faculty-", "0"));

        }
        public void view_role_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_staff_advisor_roles ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_role.DataSource = dt;
            dt.DefaultView.Sort = "staff_advisor_role";
            ddl_role.DataTextField = "staff_advisor_role";
            ddl_role.DataValueField = "staff_advisor_role_id";
            ddl_role.DataBind();
            ddl_role.Items.Insert(0, new ListItem("--Select Role-", "0"));

        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_course_dropdown();
            view_faculty_dropdown();
        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_batch_dropdown();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();

            SqlCommand cmd2 = new SqlCommand("select * from tbl_staff_advisors where batch_id='" + ddl_batch.SelectedItem.Value + "' and faculty_id='" + ddl_faculty.SelectedItem.Value + "' ", con);
            cmd2.ExecuteNonQuery();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {

                Response.Write("<script  >alert('Already Exist')</script>");

            }
            else
            {


                string sql3 = "insert into [tbl_staff_advisors] (batch_id,faculty_id,staff_advisor_role_id) values('" + ddl_batch.SelectedItem.Value + "','" + ddl_faculty.SelectedItem.Value + "','"+ddl_role.SelectedItem.Value+"')";
                SqlCommand cmd3 = new SqlCommand(sql3, con);
                cmd3.ExecuteNonQuery();
                Response.Write("<script  >alert('Sucessfully Inserted')</script>");

            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            
            view_faculty_dropdown();
            view_role_dropdown();
            view_dept_dropdown();
            view_course_dropdown();
            view_batch_dropdown();
        }

       
    }
}