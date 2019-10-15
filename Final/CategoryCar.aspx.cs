using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Final
{
    public partial class CategoryCar : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Car.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            try
            {
                string q;
                if (Context.Items["ml"] == null)
                {
                    q = "select * from Car";
                }
                else
                {
                    string maloai = Context.Items["ml"].ToString();
                    q = "select * from Car where MaDM = '" + maloai + "' ";
                }
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.ListView1.DataSource = dt;
                this.ListView1.DataBind();

            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }


        protected void LinkButton_Type(object sender, EventArgs e)
        {
            string mahoa = ((LinkButton)sender).CommandArgument;
            Context.Items["msp"] = mahoa;
            Server.Transfer("Product.aspx");
        }
    }
}