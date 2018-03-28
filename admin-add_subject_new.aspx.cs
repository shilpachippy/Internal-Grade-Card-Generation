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
    public partial class add_subject_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
           
            ddl_batchid.Items.Insert(0, new ListItem("--Select batch--", "0"));
            
        }

        public void view_dept_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_department ", con);     //starting code of Department dropdown
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
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + ddl_dept.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_course.DataSource = dt;
           
            dt.DefaultView.Sort = "course_name";  //to sort dropdown values
            ddl_course.DataTextField = "course_name"; //to display department name
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
            ddl_batchid.DataSource = dt;
            
            //dt.DefaultView.Sort = "batch_name";  //to sort dropdown values
            ddl_batchid.DataTextField = "batch_name"; //to display department name
            ddl_batchid.DataValueField = "batch_id";
            ddl_batchid.DataBind();
            ddl_batchid.Items.Insert(0, new ListItem("--Select Batch--", "0"));
        }

        public void view_sem_dropdown()
        {

            
            ddl_semid.Items.Insert(0, new ListItem("--Select Sem--", "0"));
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_subject_new where sem='" + ddl_semid.SelectedItem.Text + "' and subject='" + txtsubject.Text + "' ", con);
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

                string sql = "insert into [tbl_subject_new] (slot,subject_code,subject,IA_mark,ESE_mark,total,credits,batch_id,sem,active) values('" + txtslot.Text.Trim() + "','" + txtcourseno.Text.Trim() + "','" + txtsubject.Text.Trim() + "','" + txtiamark.Text.Trim() + "','" + txtexemark.Text.Trim() + "','" + txttotal.Text.Trim() + "','" + txtcredit.Text.Trim() + "','" + ddl_batchid.SelectedItem.Value + "','" + ddl_semid.SelectedItem.Text + "',1)";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery();
                
                Response.Write("<script  >alert('Successfully Inserted')</script>");


            }
        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_course_dropdown();
        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_batch_dropdown();
        }

        

        protected void CLEAR_Click(object sender, EventArgs e)
        {
            txtslot.Text = "";
            txtcourseno.Text = "";
            txtsubject.Text = "";
            txtiamark.Text = "";
            txtexemark.Text = "";
            txttotal.Text = "";
            txtcredit.Text = "";
            view_batch_dropdown();
            view_course_dropdown();
            view_dept_dropdown();
            
            view_sem_dropdown();
        }

       

       

       

        
    }
}