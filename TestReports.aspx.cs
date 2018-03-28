using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Reporting.WebForms;
namespace sample_internal
{
    public partial class TestReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();
                view_semester_dropdown();
               

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            ddl_batch.Items.Insert(0, new ListItem("--Select Batch--", "0"));
           
            ddl_exam.Items.Insert(0, new ListItem("--Select Exam--", "0"));
            
               // FindBas();
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
        public void view_semester_dropdown()
        {
            ddl_sem.Items.Insert(0, new ListItem("--Select Semester-", "0"));
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
        public void view_exam_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct * from tbl_exam_details ", con);     //starting code of Department dropdown
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_exam.DataSource = dt;
            dt.DefaultView.Sort = "exam_name";  //to sort dropdown values
            ddl_exam.DataTextField = "exam_name"; //to display department name
            ddl_exam.DataValueField = "exam_id";
            ddl_exam.DataBind();
            ddl_exam.Items.Insert(0, new ListItem("--Select Exam -", "0"));

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TestDataTableAdapters.MarksTableAdapter ma = new TestDataTableAdapters.MarksTableAdapter();
            TestData.MarksTableDataTable mdt=new TestData.MarksTableDataTable();

            ma.Fill(mdt, Convert.ToInt16(ddl_exam.SelectedValue), Convert.ToInt16(ddl_batch.SelectedValue), Convert.ToInt16(ddl_sem.SelectedValue));
            //ma.Fill()
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = mdt;

            ReportParameter rp = new ReportParameter("examid", ddl_exam.SelectedValue);
            ReportParameter rp1 = new ReportParameter("batchid", ddl_batch.SelectedValue);
            ReportParameter rp2 = new ReportParameter("sem",ddl_sem.SelectedValue);

            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.ReportPath = "GradeCard.rdlc";
            ReportViewer1.LocalReport.SetParameters(new ReportParameter[] { rp,rp1,rp2 });
            ReportViewer1.LocalReport.DataSources.Add(rds);
            ReportViewer1.LocalReport.Refresh();
        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_course_dropdown();
        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_batch_dropdown();
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {

        }

        protected void ddl_batch_SelectedIndexChanged(object sender, EventArgs e)
        {
            view_exam_dropdown();
        }

        //public void FindBas()
        //{
        //    ReportViewer1.ProcessingMode = ProcessingMode.Local;
        //    LocalReport rep = ReportViewer1.LocalReport;
        //    rep.ReportPath = "TestRpt.rdlc";


        //    SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin42");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from tbl_exam_details ", con);     //starting code of Department dropdown
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    ReportDataSource dsMaintenanceDS = new ReportDataSource();
        //    dsMaintenanceDS.Name = "DataSet1_MaintenanceDS";
        //    dsMaintenanceDS.Value = dt;
        //    rep.DataSources.Clear();

        //    string[] _p1 = new string[] { "param1", DropDownList1.SelectedValue };

        //    ReportParameter p1 = new ReportParameter("param1", _p1);


        //    this.ReportViewer1.LocalReport.SetParameters(new ReportParameter[] { p1 });

        //    rep.DataSources.Add(dsMaintenanceDS);
        //    rep.Refresh();

        //}

       
    }
}