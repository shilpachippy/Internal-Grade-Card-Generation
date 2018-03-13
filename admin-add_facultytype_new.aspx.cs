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
    public partial class add_facultytype_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            viewgrid();
        }

        public void viewgrid() //course grid function 
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT faculty_type from tbl_faculty_type order by faculty_type", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.ExecuteNonQuery();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        
        protected void btn_add_Click(object sender, EventArgs e)
        {

             SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select faculty_type from tbl_faculty_type where  faculty_type='" + txt_faculty_type.Text + "' ", con);
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
                
                string sql="insert into [tbl_faculty_type] (faculty_type,active) values ('"+txt_faculty_type.Text+"',1)";
                SqlCommand cmd2=new SqlCommand(sql,con);
                cmd2.ExecuteNonQuery();
                
                Response.Write("<script  >alert('Successfully Inserted')</script>");


            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
         txt_faculty_type.Text = "";
         GridView2.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }
    }
        }

        
    
