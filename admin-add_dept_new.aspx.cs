﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace sample_internal
{
    public partial class add_dept_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select dept_name as Departments from tbl_department where active=1  order by dept_name ", con);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbl_department where dept_name='" + txtdept.Text + "' and active=1 ", con);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script  >alert('Already Exist')</script>");

            }
            else
            {
            
                string sql = "insert into [tbl_department] (dept_name,active) values('" + txtdept.Text + "',1)";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery(); 
               
                
                Response.Write("<script  >alert('Successfully added ')</script>");
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtdept.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;
        }

      
    }
}