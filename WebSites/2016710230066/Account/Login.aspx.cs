using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using _2016710230066;
using System.Data;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }

        protected void LogIn(object sender, EventArgs e)
        {

        //if (IsValid)
        //{
        //    // Validate the user password
        //    var manager = new UserManager();
        //    ApplicationUser user = manager.Find(UserName.Text, Password.Text);
        //    if (user != null)
        //    {
        //        IdentityHelper.SignIn(manager, user, RememberMe.Checked);
        //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //    }
        //    else
        //    {
        //        FailureText.Text = "Invalid username or password.";
        //        ErrorMessage.Visible = true;
        //    }
        //}

        System.Data.DataTable dt = DatabaseLayer.GirişYap(UserName.Text, Password.Text);

        if (dt.Rows.Count==1)
        {
            string tipId = dt.Rows[0][1].ToString();
            if (tipId == "1")// baskan
            {
                Session["Id"] = dt.Rows[0][0].ToString();
                Session["TipId"] = tipId;
                Response.Redirect("Baskan.aspx");
            }
            else if (tipId == "2")// uye
            {
                Session["Id"] = dt.Rows[0][0].ToString();
                Session["TipId"] = tipId;
                Response.Redirect("uye.aspx");
            }
            else if (tipId == "3")// basvurusahibi
            {
                Session["Id"] = dt.Rows[0][0].ToString();
                Session["TipId"] = tipId;
                Response.Redirect("basvursahip.aspx");

                //Page.Response.Redirect("basvursahip.aspx?text=" + UserName.Text);
            }
            

       
           
        }
        else
        {
            FailureText.Text = "yanlış kullanıcı adı ve şifre girdiniz.";
            ErrorMessage.Visible = true;
        }
        

    }
}