using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Assistencia_AMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            
                SqlCommand cmd1 = new SqlCommand("select * from tbl_login where username='" + txt_username.Text + "' and password='" + txt_pwd.Text + "' ", con);
                cmd1.ExecuteNonQuery();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    int cat = Convert.ToInt32(dt1.Rows[0][3].ToString());
                    Response.Write(cat);
                    if (cat == 2)
                    {

                        Response.Redirect("staff-home.aspx");
                    }
                    else if (cat == 3)
                    {
                        Response.Redirect("hod-home_page.aspx");
                    }

                    else if (cat == 1)
                    {

                        Response.Redirect("admin-home.aspx");

                    }




                }
                else
                {
                    Response.Write("<script  >alert('Invalid')</script>");
                }
        }
    }

}
