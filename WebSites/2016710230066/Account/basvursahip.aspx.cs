using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Account_basvursahip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["Id"] != null && Session["TipId"].ToString()=="3") {

            Page.MaintainScrollPositionOnPostBack = true;
            string adsoyad = DatabaseLayer.GetirAd(int.Parse(Session["Id"].ToString()));
            Label1.Text = adsoyad;
          
            Label3.Text = adsoyad;
            Label4.Text = DatabaseLayer.tcgetir(Session["Id"].ToString());
            Label5.Text = adsoyad;
            Label6.Text = DateTime.Now.ToShortDateString();            //current date
            if (!Page.IsPostBack)
            {
                //DropDownList2.Items.Clear();
                //DropDownList2.Items.Insert(0, "Gün seçiniz");
                for (int k = 01; k <= 31; k++)  ///fulling dropdownlist

                {
                    DropDownList2.Items.Insert(k, k.ToString());
                }
            }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                //DropDownList3.Items.Clear();
                //DropDownList3.Items.Insert(0, "AY seçiniz");
                for (int i = 01; i <= 12; i++)

                {
                    DropDownList3.Items.Insert(i, i.ToString());
                }
            }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                //DropDownList4.Items.Clear();
                //DropDownList4.Items.Insert(0, "Yıl seçiniz");
                int sayac = 1;
                for (int i = 1980; i <= 2020; i++)

                {
                    DropDownList4.Items.Insert(sayac, i.ToString());
                    sayac = sayac + 1;
                }
            }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                //DropDownList5.Items.Clear();
                //DropDownList5.Items.Insert(0, "seçiniz");
                for (int i = 01; i <= 203; i++)

                {
                    DropDownList5.Items.Insert(i, DatabaseLayer.universitegetir(i));

                }
           
                //DropDownList6.Items.Clear();
                //DropDownList6.Items.Insert(0, "seçiniz");

                for (int i = 01; i <= 4; i++)

                {
                    DropDownList6.Items.Insert(i, DatabaseLayer.unvangetir(i));

                }
            }

            DataTable dtbasvurular = DatabaseLayer.getirbasvurularim(Session["Id"].ToString());            ///fulling gridview
            GridView1.DataSource = dtbasvurular;
            GridView1.DataBind();

            //LinkButton1.Attributes.Add("onclick","document.getElementById('"+FileUpload1.ClientID+"').click();return false");

            //Response.Redirect(Request.Url.ToString(), false);


            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                if (Session["index"] == null)
                {
                    Label9.Text = " session yapilmadi";

                    DropDownList5.Items.Clear();
                    DropDownList5.Items.Insert(0, "seçiniz");

                    for (int i = 01; i <= 203; i++)

                    {
                        DropDownList5.Items.Insert(i, DatabaseLayer.universitegetir(i));

                    }

                }
                else
                {
                    DropDownList5.SelectedIndex = int.Parse(Session["index"].ToString());


                }
            }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
                {
                    if (Session["unvanlar"] == null)
                    {
                        DropDownList6.Items.Clear();
                        DropDownList6.Items.Insert(0, "seçiniz");

                        for (int i = 01; i <= 4; i++)

                        {
                            DropDownList6.Items.Insert(i, DatabaseLayer.unvangetir(i));

                        }
                    }
                    else
                    {
                        DropDownList6.SelectedIndex =int.Parse(Session["unvanlar"].ToString());
                    }
                }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                if (Session["gun"] == null)
                {
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Insert(0, "Gün seçiniz");
                    for (int k = 01; k <= 31; k++)  ///fulling dropdownlist

                    {
                        DropDownList2.Items.Insert(k, k.ToString());
                    }
                }
                else
                {
                    DropDownList2.SelectedValue = Session["gun"].ToString();
                }
            }

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                if (Session["ay"] == null)
                {
                    DropDownList3.Items.Clear();
                    DropDownList3.Items.Insert(0, "AY seçiniz");
                    for (int i = 01; i <= 12; i++)

                    {
                        DropDownList3.Items.Insert(i, i.ToString());
                    }
                }
                else
                {
                    DropDownList3.SelectedValue = Session["ay"].ToString();
                }
            }


            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if (!Page.IsPostBack)
            {
                if (Session["yil"] == null)
                {
                    DropDownList4.Items.Clear();
                    DropDownList4.Items.Insert(0, "Yıl seçiniz");
                    int sayac = 1;
                    for (int i = 1980; i <= 2020; i++)

                    {
                        DropDownList4.Items.Insert(sayac, i.ToString());
                        sayac = sayac + 1;
                    }
                }
                else
                {
                    DropDownList4.SelectedValue = Session["yil"].ToString();
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
     


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx"); /// removing back into login page
    }
    protected void uploadButton_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string[] extension1 = FileUpload1.FileName.Split('.');
            if (extension1[extension1.Length - 1].ToLower() == "pdf")
            {

                try
                {
                    string filename = FileUpload1.FileName.Replace(' ', '_');
                    Session["address"] = Server.MapPath("~/MateryalMetot/" + filename);
                    FileUpload1.PostedFile.SaveAs(Session["address"].ToString());
                    Label8.Text = filename[0].ToString() + filename[1].ToString() + filename[2].ToString() + "...pdf";

                }
                catch (Exception)
                {
                    Label8.Text = "BAŞARISIZ";

                }
            }


            //string Extent = Path.GetExtension(FileUpload1.FileName);
            //if (Extent.ToLower() != ".pdf")
            //{
            //    Label8.Text = "sadece pdf dosyası seçebilirsiniz!";
            //    Label8.ForeColor = System.Drawing.Color.Red;
            //}
            //else {
            //    FileUpload1.SaveAs(Server.MapPath("~/MateryalMetot/" + FileUpload1.FileName));
            //    Label8.Text = FileUpload1.FileName+" Dosyayı yüklendi";
            //    Label8.ForeColor = System.Drawing.Color.Green;
            //}


            else
            {
                Label8.Text = "pdf Yükleyiniz";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
        }
    }






    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "0")
        {
            Table2.Visible = false;
            Table3.Visible = false;
            Table10.Visible = false;
            Table11.Visible = false;
            Table12.Visible = false;
        }
       else if (DropDownList1.SelectedValue == "1")
        {
            Table2.Visible = false;
            Table3.Visible = false;
            Table10.Visible = false;
            Table11.Visible = false;
            Table12.Visible = false;
        }
       else if (DropDownList1.SelectedValue== "2")
        {
            Table2.Visible=true;
            Table3.Visible = false;
            Table10.Visible = false;
            Table11.Visible = false;
            Table12.Visible = false;
            Session["birinciaras"] = DropDownList1.SelectedValue;
        }
        else if(DropDownList1.SelectedValue == "3")
        {
            Table2.Visible = true;
            Table3.Visible = true;
            Table10.Visible = false;
            Table11.Visible = false;
            Table12.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Table2.Visible = true;
            Table3.Visible = true;
            Table10.Visible = true;
            Table11.Visible = false;
            Table12.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "5")
        {
            Table2.Visible = true;
            Table3.Visible = true;
            Table10.Visible = true;
            Table11.Visible = true;
            Table12.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "6")
        {
            Table2.Visible = true;
            Table3.Visible = true;
            Table10.Visible = true;
            Table11.Visible = true;
            Table12.Visible = true;
        }

    }

    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList7.SelectedValue == "0")
        {
            Table13.Visible = false;
            Table14.Visible = false;
        }
        else if (DropDownList7.SelectedValue == "1")
        {
            Table13.Visible = false;
            Table14.Visible = false;
        }
        else if (DropDownList7.SelectedValue == "2")
        {
            Table13.Visible = true;
            Table14.Visible = false;
        }
        else if (DropDownList7.SelectedValue == "3")
        {
            Table13.Visible = true;
            Table14.Visible = true;
        }
    }
    //protected void OnSelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string message = DropDownList5.SelectedItem.Value + "_" + DropDownList6.SelectedItem.Value;
    //    ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "alert", "alert('" + message + "');", true);

    //}


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {


        Session["index"] = DropDownList5.SelectedIndex;



    }

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["unvanlar"] = DropDownList6.SelectedIndex;

      
    }

    protected void Button2_Click(object sender, EventArgs e)

    {
        //   
        //    
        //if (Session["Id"] != null)
        //{
        //string date = DropDownList4.SelectedValue + DropDownList3.SelectedValue + DropDownList2.SelectedValue;
        //int basvurid = int.Parse(DatabaseLayer.getirbasvurid()) -1;
        string basvurutarihi = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day;
        string dogumgunu = DropDownList4.SelectedValue + "-" + DropDownList3.SelectedValue + "-" + DropDownList2.SelectedValue;
        string kullanciid = Session["Id"].ToString();
        string univer = DropDownList5.SelectedIndex.ToString();
        string unvan = DropDownList6.SelectedIndex.ToString();
        string filepath = Session["address"].ToString();
        int sonuc = DatabaseLayer.kaydet(TextBox1.Text, DropDownList1.SelectedValue, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox14.Text, TextBox15.Text, TextBox16.Text, TextBox17.Text, TextBox18.Text, univer, unvan, dogumgunu,TextBox19.Text, kullanciid, basvurutarihi, filepath, kullanciid);

        if (sonuc == 1)
        {
            Label9.Text = " kaydınız başarılı bir şekilde gerçekleşmiştir";

        }
        else
        {
            Label9.Text = "kaydınız gerçekleşmemiştir";

        }
        string basvurid = DatabaseLayer.getirbasvurid();
        if (TextBox20.Text != null)
        {
            DatabaseLayer.insertmerkez(TextBox20.Text, TextBox30.Text, basvurid);
        }

            if (TextBox31.Text != null)
            {
               DatabaseLayer.insertmerkez(TextBox31.Text, TextBox32.Text, basvurid);
            }

            if (TextBox8.Text!=null)
        {
           
             DatabaseLayer.arastirmaci(TextBox8.Text,TextBox9.Text,TextBox10.Text, basvurid);
           
        }
        if (TextBox11.Text != null)
        {

             DatabaseLayer.arastirmaci(TextBox11.Text, TextBox12.Text, TextBox13.Text, basvurid);

        }
        if (TextBox21.Text != null)
        {

             DatabaseLayer.arastirmaci(TextBox21.Text, TextBox22.Text, TextBox23.Text, basvurid);

        }
        if (TextBox24.Text != null)
        {

           DatabaseLayer.arastirmaci(TextBox24.Text, TextBox25.Text, TextBox26.Text, basvurid);

        }
        if (TextBox27.Text != null)
        {

          DatabaseLayer.arastirmaci(TextBox27.Text, TextBox28.Text, TextBox29.Text, basvurid);

        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["gun"] = DropDownList2.SelectedValue;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ay"] = DropDownList3.SelectedValue;
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["yil"] = DropDownList4.SelectedValue;
    }
}