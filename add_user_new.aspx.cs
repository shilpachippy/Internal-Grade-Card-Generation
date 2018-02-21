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
    public partial class add_user_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            viewgrid();
        }
        public void viewgrid() //course grid function 
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select user_type from tbl_user ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.ExecuteNonQuery();
            GridView_users.DataSource = dt;
            GridView_users.DataBind();
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            txt_user.Text = "";
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {

         SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_user where  user_type='" + txt_user.Text + "' ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script  >alert('User Already Exist')</script>");

            }
            else
            {

                string sql = "insert into [tbl_user] (user_type,active) values('" + txt_user.Text + "',1)";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery();
                viewgrid();
                Response.Write("<script  >alert('New User Added ')</script>");


            }
        }

    }


}