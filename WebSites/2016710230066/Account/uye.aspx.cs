using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Account_uye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] != null && Session["TipId"].ToString() == "2")
        {
            string ad = DatabaseLayer.getirraporad(int.Parse(Session["Id"].ToString()));
            Label1.Text = ad;

            DataTable dtuye = DatabaseLayer.GetiruyeBasvurular(Session["Id"].ToString());            ///fulling gridview
            GridView1.DataSource = dtuye;
            GridView1.DataBind();
            Label2.Text = GridView1.Rows.Count.ToString();

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void lnkselect_Click(object sender, EventArgs e)
    {
        int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        Session["basvurid"] = GridView1.Rows[rowind].Cells[0].Text;
        Label5.Text = Session["basvurid"].ToString();
        Session["gelistarih"] = GridView1.Rows[rowind].Cells[3].Text;
        Label4.Text = Session["gelistarih"].ToString();
        Session["arastirmaci"] = GridView1.Rows[rowind].Cells[1].Text;
        Label8.Text = Session["arastirmaci"].ToString();
        Session["baslik"] = GridView1.Rows[rowind].Cells[2].Text;
        Label7.Text = Session["baslik"].ToString();
        Label6.Text = DatabaseLayer.getirgonullu(Session["basvurid"].ToString()).ToString();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}