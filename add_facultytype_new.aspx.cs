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
            if (!IsPostBack)
            {
                view_user_dropdown();
            }
            
        }

        public void view_user_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_user  ", con);     //starting code of Department dropdown
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_user.DataSource = dt;
            dt.DefaultView.Sort = "user_type";  //to sort dropdown values
            ddl_user.DataTextField = "user_type"; //to display department name
            ddl_user.DataValueField = "usertype_id";
            ddl_user.DataBind();
            ddl_user.Items.Insert(0, new ListItem("--Select User-", "0"));

        }
        protected void btn_add_Click(object sender, EventArgs e)
        {

             SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
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
                
                string sql="insert into [tbl_faculty_type] (faculty_type,usertype_id,active) values ('"+txt_faculty_type.Text+"','"+ddl_user.SelectedItem.Value+"',1)";
                SqlCommand cmd2=new SqlCommand(sql,con);
                cmd2.ExecuteNonQuery();
                
                Response.Write("<script  >alert('Successfully Inserted')</script>");


            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
         txt_faculty_type.Text = "";
        }
    }
        }

        
    
