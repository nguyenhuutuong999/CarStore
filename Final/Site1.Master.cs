using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Final
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Car.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["isLogin"] == null)
            {
                Session["isLogin"] = "";
            }
                string q = "select * from CategoryCar";
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            isLogin.Text = Session["isLogin"].ToString();
        }
            

       
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("CategoryCar.aspx");
        }
        protected void btn_Login(object sender, EventArgs e)
        {
            String q = "select * from Guest where TenTaiKhoan = '{0}' and MatKhau = '{1}' ";
            q = String.Format(q, txtUser.Text, txtPass.Text );

            SqlDataAdapter da = new SqlDataAdapter(q, stcn);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if(dt.Rows.Count == 0)
            {
                lbInfor.Text = "A Invalid Account !!!";
            }
            else
            {
                Session["isLogin"] = "Welcome " + dt.Rows[0]["TenTaiKhoan"] + " To Our Store !!!";
                isLogin.Text = Session["isLogin"].ToString();
            }
        }

    }
}