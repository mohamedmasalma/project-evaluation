using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Account_Baskan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] != null && Session["TipId"].ToString() == "1")
        {
            Page.MaintainScrollPositionOnPostBack = true;
            DataTable dtbaskan = DatabaseLayer.GetirBasvurular();            ///fulling gridview
            GridView1.DataSource = dtbaskan;
            GridView1.DataBind();

            DataTable DTSONUC = DatabaseLayer.GetirSonucBasvurular();            ///fulling gridview
            GridView2.DataSource = DTSONUC;
            GridView2.DataBind();

            Label1.Text = GridView1.Rows.Count.ToString();
            Label2.Text = GridView2.Rows.Count.ToString();


            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Insert(0, "seçiniz");
                for (int i = 1; i <= 3; i++)

                {
                    DropDownList1.Items.Insert(i, DatabaseLayer.getirraportorler(i));

                }
            }


            if (!Page.IsPostBack)
            {
                if (Session["raportorler"] == null)
                {


                    DropDownList1.Items.Clear();
                    DropDownList1.Items.Insert(0, "seçiniz");

                    for (int i = 1; i <= 3; i++)

                    {
                        DropDownList1.Items.Insert(i, DatabaseLayer.getirraportorler(i));

                    }

                }
                else
                {
                    DropDownList1.SelectedValue = Session["raportorler"].ToString();


                }
            }



            //DropDownList1.Items.Clear();
            //DropDownList1.Items.Insert(0, "seçiniz");

            //for (int i = 1; i <= 3; i++)

            //{
            //    DropDownList1.Items.Insert(i, DatabaseLayer.getirraportorler(i));

            //}
            if (!Page.IsPostBack)
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Insert(0, "seçiniz");

                for (int i = 1; i <= 3; i++)

                {
                    DropDownList2.Items.Insert(i, DatabaseLayer.getirkarar(i));

                }
            }

            if (!Page.IsPostBack)
            {
                if (Session["karar"] == null)
                {


                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Insert(0, "seçiniz");

                    for (int i = 1; i <= 3; i++)

                    {
                        DropDownList2.Items.Insert(i, DatabaseLayer.getirkarar(i));

                    }

                }
                else
                {
                     DropDownList2.SelectedValue= Session["karar"] .ToString();


                }
            }


            //if (Session["selected"] != null)
            //{
            //Label3.Text = Session["selected"].ToString();


            //}
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
       

   

    protected void lnkselect_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel10.Visible = true;
        Panel8.Visible = true;

        int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
       Session["basvurid"]  = GridView1.Rows[rowind].Cells[0].Text;

        Label3.Text = Session["basvurid"].ToString();
        //Button3.Visible = true;
      
        if (DatabaseLayer.getirrapor(int.Parse(Session["basvurid"].ToString())) != "")
        {
            Label4.Text = DatabaseLayer.getirrapor(int.Parse(Session["basvurid"].ToString()));
            Button3.Visible = false;
            Button6.Visible = true;

        }else
        {
            Label4.Text = "Atama Yapılmadı";
            Button3.Visible = true;
            Button6.Visible = false;

        }




        }

    



    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["raportorler"] = DropDownList1.SelectedValue;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //GridViewRow row = GridView1.SelectedRow;
        //Session["selected"] = GridView1.SelectedRow.Cells[0].Text;
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
        Label4.Text = Session["raportorler"].ToString();
        Button3.Visible = false;
        Button6.Visible = true;
        int sonuc = DatabaseLayer.insertraportor(DropDownList1.SelectedValue,DatabaseLayer.getirraportorid(DropDownList1.SelectedIndex), Session["basvurid"].ToString());
        if (sonuc == 1)
        { Label6.Text = "kaydedildi"; }
        else { Label6.Text = "olmadi"; }
        if (DatabaseLayer.getirdegerid(Session["basvurid"].ToString()) == "")
        {
            for (int i = 1; i <= 15; i++)
            {
                DatabaseLayer.insertdegerlendirme(Session["basvurid"].ToString(), DatabaseLayer.getirraportorid(DropDownList1.SelectedIndex));
            }
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Label4.Text = Session["raportorler"].ToString();
        int sonuc = DatabaseLayer.insertraportor(DropDownList1.SelectedValue, DatabaseLayer.getirraportorid(DropDownList1.SelectedIndex), Session["basvurid"].ToString());
        if (sonuc == 1)
        { Label6.Text = "kaydedildi"; }
        else { Label6.Text = "olmadi"; }
        DatabaseLayer.updatdegerlendirme(DatabaseLayer.getirraportorid(DropDownList1.SelectedIndex), Session["basvurid"].ToString());
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["karar"] = DropDownList2.SelectedValue;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string sonuctarihi= DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day;
        int karardegistir = DatabaseLayer.updatekarar(DropDownList2.SelectedIndex.ToString(),TextBox1.Text, sonuctarihi, Session["basvurid"].ToString());
        if (karardegistir == 1)
        { Label7.Text = "kaydedildi"; }
        else { Label7.Text = "olmadi"; }
    }
}