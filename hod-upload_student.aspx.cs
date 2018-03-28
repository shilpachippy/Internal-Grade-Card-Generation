using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace sample_internal
{
    public partial class hod_upload_student : System.Web.UI.Page
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

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_course_dropdown();
        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_batch_dropdown();
        }


        private void Import_To_Grid(string FilePath, string Extension, string isHDR)
        {

            string conStr = "";

            switch (Extension)
            {
                case ".xls": //Excel 97-03
                    conStr = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                    break;
                case ".xlsx": //Excel 07
                    conStr = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
                    break;
            }
            conStr = String.Format(conStr, FilePath, isHDR);
            OleDbConnection connExcel = new OleDbConnection(conStr);
            OleDbCommand cmdExcel = new OleDbCommand();
            OleDbDataAdapter oda = new OleDbDataAdapter();
            DataTable dt = new DataTable();
            cmdExcel.Connection = connExcel;

            //Get the name of First Sheet
            connExcel.Open();
            DataTable dtExcelSchema;
            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
            connExcel.Close();

            //Read Data from First Sheet
            connExcel.Open();
            cmdExcel.CommandText = "SELECT * From [" + SheetName + "]";
            oda.SelectCommand = cmdExcel;
            oda.Fill(dt);
            connExcel.Close();
            foreach (DataRow dr in dt.Rows)
            {
                string r = dr[0].ToString();
                string n = dr[1].ToString();
                //string a = dr[2].ToString();
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
                con.Open();

                //SqlCommand cmd2 = new SqlCommand("select * from tbl_internal_marks where batch_id='" + ddl_batch.SelectedItem.Value + "' and exam_id='" + ddl_exam_title.SelectedItem.Value + "' and subject_code='" + ddl_subject_code.SelectedItem.Text + "' and roll_no='" + r + "' ", con);
                //cmd2.ExecuteNonQuery();
                //SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                //DataTable dt2 = new DataTable();
                //da2.Fill(dt2);
                //if (dt2.Rows.Count > 0)
                //{

                //    Response.Write("<script  >alert('Already Entered')</script>");


                //}
                //else
                //{


                    string sql3 = "insert into [tbl_student] (batch_id,roll_no,student_name,active) values('" + ddl_batch.SelectedItem.Value + "','" + r+ "','" +n + "',1)";
                    SqlCommand cmd3 = new SqlCommand(sql3, con);
                    cmd3.ExecuteNonQuery();
                    Response.Write("<script  >alert('Sucessfully Inserted')</script>");

                //}
                con.Close();
            }
            //Bind Data to GridView
            GridView1.Caption = Path.GetFileName(FilePath);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string FolderPath = ConfigurationManager.AppSettings["FolderPath"];
            string FileName = GridView1.Caption;
            string Extension = Path.GetExtension(FileName);
            string FilePath = Server.MapPath(FolderPath + FileName);

            Import_To_Grid(FilePath, Extension, rbHDR.SelectedItem.Text);
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                string FolderPath = ConfigurationManager.AppSettings["FolderPath"];

                string FilePath = Server.MapPath(FolderPath + FileName);
                FileUpload1.SaveAs(FilePath);
                Import_To_Grid(FilePath, Extension, rbHDR.SelectedItem.Text);
            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            view_dept_dropdown();
            view_batch_dropdown();
            view_course_dropdown();
            
        }

    }
}