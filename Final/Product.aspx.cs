using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Product : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Car.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            try
            {
                string q;
                if (Context.Items["msp"] == null)
                {
                    q = "select * from Car";
                }
                else
                {
                    string masp = Context.Items["msp"].ToString();
                    q = "select * from Car where MaXe = '" + masp + "' ";
                }

                SqlDataAdapter da = new SqlDataAdapter(q, connectionString);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
        protected void btnMua_Click(object sender, EventArgs e)

        {
            lbKetQua.Text = "Thêm vào giỏ thành công";
        }
    }
}