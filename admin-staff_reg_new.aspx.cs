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
    public partial class staff_reg_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_department_dropdown();
                view_designation_dropdown();
                //view_user_dropdown();
            }
        }
        public void view_department_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_department ", con);     
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_dept.DataSource = dt;
            dt.DefaultView.Sort = "dept_name";  //to sort dropdown values
            ddl_dept.DataTextField = "dept_name"; 
            ddl_dept.DataValueField = "dept_id";
            ddl_dept.DataBind();
            ddl_dept.Items.Insert(0, new ListItem("--Select Department--", "0"));

        }
        //public void view_user_dropdown()
        //{
        //    SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from tbl_user  ", con);     //starting code of Department dropdown
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    ddl_user.DataSource = dt;
        //    dt.DefaultView.Sort = "user_type";  //to sort dropdown values
        //    ddl_user.DataTextField = "user_type"; 
        //    ddl_user.DataValueField = "usertype_id";
        //    ddl_user.DataBind();
        //    ddl_user.Items.Insert(0, new ListItem("--Select User-", "0"));
        //}
        public void view_designation_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_faculty_type ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_designation.DataSource = dt;
            dt.DefaultView.Sort = "faculty_type";
            ddl_designation.DataTextField = "faculty_type";
            ddl_designation.DataValueField = "faculty_type_id";
            ddl_designation.DataBind();
            ddl_designation.Items.Insert(0, new ListItem("--Select Designation--", "0"));
        }
        protected void btn_register_Click(object sender, EventArgs e)
        {
 SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();

           //*****************checking staff_reg is already registrered**************
            SqlCommand cmd2 = new SqlCommand("select * from tbl_faculty where phone='"+txt_phone.Text+"'" , con);
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
                //***********************checking txt_username already exists*********************
                SqlCommand cmd3 = new SqlCommand("select * from tbl_faculty where username='" + txt_username.Text + "'", con);
                cmd3.ExecuteNonQuery();
                SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                DataTable dt3 = new DataTable();
                da3.Fill(dt3);
                if (dt3.Rows.Count > 0)
                {
                    Response.Write("<script  >alert('username already exits')</script>");
                }


                else
                {
                    if (txt_password.Text == txt_confirm_password.Text)
                    {
                        string sql1 = "insert into [tbl_faculty] (dept_id,faculty_name,gender,dob,address,phone,email,usertype_id,faculty_type_id,active) values('" + ddl_dept.SelectedItem.Value + "','" + txt_name.Text + "','" + rbl_gender.SelectedItem.Text + "','" + txt_dob.Text + "' ,'" + txt_address.Text + "','" + txt_phone.Text + "','" + txt_email.Text + "','" + ddl_user.SelectedItem.Value + "','" + ddl_designation.SelectedItem.Value + "',1)";
                        SqlCommand cmd4 = new SqlCommand(sql1, con);
                        cmd4.ExecuteNonQuery();
                        string sql2="insert into [tnl_login] (username,password) values ('"+txt_username.Text+"','"+txt_password+"')";
                        SqlCommand cmd5 = new SqlCommand(sql2, con);
                        cmd5.ExecuteNonQuery();
                        Response.Write("<script  >alert('Successfully Inserted')</script>");
                        
                    }
                    else
                    {
                        Response.Write("<script  >alert('Password not matching')</script>");
                    }
                }
            }
            

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            view_department_dropdown();
            txt_address.Text = "";
            //view_user_dropdown();
            txt_dob.Text = "";
            txt_email.Text = "";

            txt_name.Text = "";
            txt_password.Text = "";
            txt_phone.Text = "";
            txt_username.Text = "";
            view_department_dropdown();
        }
    }
}