using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonLog_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();

        string checkUser = "select count(*) from [Table] where UserName ='" + TextBoxUser.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, con);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkPass = "select password from [Table] where UserName ='" + TextBoxUser.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPass, con);
            string password = passCom.ExecuteScalar().ToString().Replace(" ","");

            if (password == TextBoxPW.Text)
            {
                Session["new"] = TextBoxUser.Text;
                Response.Write("Password correct");
                Response.Redirect("Claim.aspx");
            }
            else {
                Response.Write("Password incorrect");
            }
        }
        else {
            Response.Write("Username is incorrect");
        }
        
    }
}