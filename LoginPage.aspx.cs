using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoffeWebSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        /*satart of public variables*/
        public string conString = "Data Source=SAIFBATTAH;Initial Catalog=CoffeStore;Integrated Security=True";
        /*end of public variables*/
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserInfoTable where User_Name = @uname and Password = @password", con);
            cmd.Parameters.AddWithValue("@uname", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Session["username"] = username.Text.ToString();
                Server.Transfer("index.aspx");
            }
            else
            {
                wronginfo.Text = "Username or Password Incorrect!...";
            }

            sdr.Close();
            con.Close();
        }
    }
}