using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CoffeWebSite
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /**/
            txtfname.Attributes.Add("onKeyUp", "CallScript(this)");
            /**/
        }

        protected void txtbtnreg_Click(object sender, EventArgs e)
        {
            string fname = "";
            string lname = "";
            string uname = "";
            string email = "";
            string gender = "";
            string birthdateValue = "";
            string phoneno = "";
            string pw = "";
            string repw = "";
            /*======================Pass Input Values From ASPX to CS===================*/
            fname = txtfname.Text;
            lname = txtlname.Text;
            uname = txtuname.Text;
            email = txtemail.Text;

            DropDownList GenderList = (DropDownList)FindControl("GenderList");
            gender = GenderList.SelectedValue;

            HtmlInputGenericControl birthdate = (HtmlInputGenericControl)FindControl("birthdate");
            birthdateValue = birthdate.Value;

            if (birthdateValue == "")
            {
                txtlbl.Text = "Please enter your birthdate";
                return;
            }
            DateTime birthdateAsDate = DateTime.Parse(birthdateValue);
            DateTime today = DateTime.Today;

            int age = today.Year - birthdateAsDate.Year;

            phoneno = txtphonenumber.Text;
            pw = txtpw.Text;
            repw = txtrepw.Text;
            /*===================================END====================================*/

            /*======================Pass Validator Values From ASPX to CS===================*/
            RegularExpressionValidator fnameValidator1 = (RegularExpressionValidator)FindControl("fnameValidator1");
            RegularExpressionValidator lnameValidator1 = (RegularExpressionValidator)FindControl("lnameValidator1");
            RegularExpressionValidator unameValidator1 = (RegularExpressionValidator)FindControl("unameValidator1");
            RegularExpressionValidator emailValidator = (RegularExpressionValidator)FindControl("emailValidator");
            RegularExpressionValidator PhoneNumberValidator1 = (RegularExpressionValidator)FindControl("PhoneNumberValidator1");
            RegularExpressionValidator pwValidator1 = (RegularExpressionValidator)FindControl("pwValidator1");
            /*===================================END========================================*/

            if (fname == "" || lname == "" || uname == "" || email == "" || birthdateValue == ""
                || phoneno == "" || pw == "" || repw == "") // if any field is empty
            {
                txtlbl.Text = "Please Fill All The Blanks!";
            }

            else
            {
                if (Regex.IsMatch(fname, fnameValidator1.ValidationExpression) &&
                    Regex.IsMatch(lname, lnameValidator1.ValidationExpression) &&
                    Regex.IsMatch(uname, unameValidator1.ValidationExpression) &&
                    Regex.IsMatch(email, emailValidator.ValidationExpression) &&
                    Regex.IsMatch(phoneno, PhoneNumberValidator1.ValidationExpression) &&
                    Regex.IsMatch(pw, pwValidator1.ValidationExpression))
                {
                    if (pw != repw)
                    {
                        txtlbl.Text = "Unamtched Passwords!";
                    }

                    else if (age < 18)
                    {
                        txtlbl.Text = "Should Be 18 years and more";
                    }
                    else
                    {
                        // here insert values into database
                        Insert(fname, lname, uname, email, gender, birthdateValue, phoneno, pw);
                        System.Threading.Thread.Sleep(3000);
                        Response.Redirect("LoginPage.aspx");
                    }

                }
                else
                {
                    txtlbl.Text = "Fix Errors!";
                }
            }
        }

        public static void Insert(string fname, string lname, string uname, string email,
            string gender, string birthdate, string phoneno, string pw)
        {
            string conString = "Data Source=SAIFBATTAH;Initial Catalog=CoffeStore;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            using (SqlCommand cmd = new SqlCommand("INSERT INTO UserInfoTable " +
                "(First_Name, Last_Name, User_Name, Email, Gender, BirthDate, Phone_Number, Password) " +
                "VALUES (@fname, @lname, @uname, @email, @gender, @birthdate, @phoneno, @pw);", con))
            {
                cmd.Parameters.AddWithValue("@fname", fname);
                cmd.Parameters.AddWithValue("@lname", lname);
                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@birthdate", birthdate);
                cmd.Parameters.AddWithValue("@phoneno", phoneno);
                cmd.Parameters.AddWithValue("@pw", pw);
                cmd.ExecuteNonQuery();
            }

        }
    }
}