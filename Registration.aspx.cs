using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack){
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();

            string checkUser = "select count(*) from [Table] where UserName ='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkUser,con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp==1) {
                Response.Write("User Already Exists");
            }
            con.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            Guid newGrid = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();

            string insertQuery = "insert into [Table] (Id,UserName, Email, Password, Country) values(@Id,@Uname, @email, @password, @country)";
            SqlCommand com = new SqlCommand(insertQuery, con);

            com.Parameters.AddWithValue("@Id", newGrid.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", DropDownCountry.SelectedItem.ToString());


/*
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
                string path = "~//uploads//" + str.ToString();

                
                SqlDataAdapter da = new SqlDataAdapter("Select * from [Table]", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                DataBind();

            }*/


            com.ExecuteNonQuery();
            Response.Redirect("Confrim.aspx");
            con.Close();
            

        }
        catch (Exception ex) {
            Response.Write("Error:"+ex.ToString());
            }
       
        }
}