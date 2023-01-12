using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void GetEmployeeDetail()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); ;
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("_sp_GetEmployeeDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
            IDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("_sp_DeleteEmployee", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", id);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        GetEmployeeDetail();
    }
}