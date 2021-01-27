using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using _2016710230066;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        //var manager = new UserManager();
        //var user = new ApplicationUser() { UserName = UserName.Text };
        //IdentityResult result = manager.Create(user, Password.Text);
        //if (result.Succeeded)
        //{
        //    IdentityHelper.SignIn(manager, user, isPersistent: false);
        //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //}
        //else
        //{
        //    ErrorMessage.Text = result.Errors.FirstOrDefault();
        //}
        try {
            Int64 tc = Int64.Parse(UserName.Text);
            if (UserName.Text.Length == 11)
            {
                if (tc %2==0)
                {
                    int toplam=0;
                    for (int i = 0; i < 10; i++)
                    {
                        toplam = toplam + int.Parse(tc.ToString()[i].ToString());
                    }
                    if (toplam.ToString()[1] == tc.ToString()[10])
                    {
                        int Mevcutmu = DatabaseLayer.mevcutmu(UserName.Text);
                        if (Mevcutmu == 0)
                        {
                            int sonuc = DatabaseLayer.kayitol(txtAd.Text.Trim(), txtSoyad.Text.Trim().ToUpper(), UserName.Text, Password.Text);
                            if (sonuc == 1)
                            {
                                ErrorMessage.Text = " kaydınız başarılı bir şekilde gerçekleşmiştir";
                                ErrorMessage.Visible = true;
                            }
                            else
                            {
                                ErrorMessage.Text = "kaydınız gerçekleşmemiştir";
                                ErrorMessage.Visible = true;
                            }
                        }

                        else
                        {
                            ErrorMessage.Text = "daha önce kayit yaptığınızdan kayıt işlemi gerçekleşmemiştir.";
                            ErrorMessage.Visible = true;
                        }
                    }
                    else
                    {
                        ErrorMessage.Text = "TC Kimlik No geçersizdir.";
                        ErrorMessage.Visible = true;
                    }

                }
                else
                {
                    ErrorMessage.Text = "TC Kimlik No çift sayı olmalıdır.";
                    ErrorMessage.Visible = true;
                }

            }
            else
            {
                ErrorMessage.Text = "TC Kimlik No 11 haneli oluşmalıdır.";
                ErrorMessage.Visible = true;
            }

        }
        catch (Exception)
        {
            ErrorMessage.Text = "TC Kimlik No rakamlardan oluşmalıdır.";
            ErrorMessage.Visible = true;

        }
       
    }
}