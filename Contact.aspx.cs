using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TMS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.;Initial Catalog=TMS_Project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResertContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SUbjectDropDownList1.ClearSelection();
            MessageTextBox.Text = "";
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string sp = "spContact_insert";
            SqlCommand cmd = new SqlCommand(sp, Con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",NameTextBox.Text);
            cmd.Parameters.AddWithValue("@E_Mail",EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject",SUbjectDropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Message",MessageTextBox.Text);
            Con.Open();
            int a= cmd.ExecuteNonQuery();
            if (a>0)
            {
                //Sweet Alert 2 Popup Message
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SuccessContact();",true);
                ResertContact();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorContact();", true);
               
            }
            Con.Close();
        }
    }
}