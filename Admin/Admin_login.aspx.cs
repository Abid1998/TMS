using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TMS_Project.Admin
{
    public partial class Admin_login : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.;Initial Catalog=TMS_Project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string query = "select * from Admin_Login where User_Name=@UserName and Password=@Password";
            SqlCommand cmd = new SqlCommand(query,Con);
            cmd.Parameters.AddWithValue("@UserName",UserNameTxt.Text);
            cmd.Parameters.AddWithValue("@Password",PasswordTxt.Text);
            Con.Open();
            SqlDataReader dr= cmd.ExecuteReader();
            if (dr.HasRows==true)
            {
                Session["admin_username"] = UserNameTxt.Text;
                Response.Redirect("Admin_Index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup","Swal.fire('Failure','Username Or Password Inccorect','error'" , true);
            }
            Con.Close();
        }
    }
}