using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Claim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGrid = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();

            string insertQuery = "insert into [Uploas] ([Id],[FName], [LName], [Address1], [Address2],[Phone],[ZipCode],[State],[City],[InsurenceNum],[uImg]) values(@Id,@fname, @lname, @address1, @address2,@phone,@zipCode,@state,@city,@insurenceNum,@uImg)";
            SqlCommand com = new SqlCommand(insertQuery, con);

            com.Parameters.AddWithValue("@Id", newGrid.ToString());
            com.Parameters.AddWithValue("@fname", TextBox1.Text);
            com.Parameters.AddWithValue("@lname", TextBox2.Text);
            com.Parameters.AddWithValue("@address1", TextBox3.Text);
            com.Parameters.AddWithValue("@address2", TextBox4.Text);
            com.Parameters.AddWithValue("@phone", TextBox5.Text);
            com.Parameters.AddWithValue("@zipCode", TextBox6.Text);
            com.Parameters.AddWithValue("@state", TextBox7.Text);
            com.Parameters.AddWithValue("@city", TextBox8.Text);
            com.Parameters.AddWithValue("@insurenceNum", TextBox9.Text);
            com.Parameters.AddWithValue("@uImg", FileUpload.FileName.ToString());

            if (FileUpload.HasFile)
            {
                string str = FileUpload.FileName;
                FileUpload.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
                string path = "~//uploads//" + str.ToString();

            }
            com.ExecuteNonQuery();
            Response.Redirect("Confrim.aspx");
            con.Close();


        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }
}
