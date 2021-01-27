using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DatabaseLayer
/// </summary>
public static class DatabaseLayer
{
    //public DatabaseLayer()
    //{
    //    //
    //    // TODO: Add constructor logic here
    //    //
    //}
    static string connstring = @"Server=DESKTOP-HMQFN40;Database=WEPBROGRAM;Trusted_Connection=True;";
    public static int kayitol(string ad, string soyad, string tc, string sifre)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "insert into  KULLANICILAR(Ad,Soyad,TC,Sifre,AktifMi,KullaniciTipId)values(@Ad,@Soyad,@TC,@Sifre,@AktifMi,@KullaniciTipId)";
            komut.Parameters.AddWithValue("@Ad", ad);
            komut.Parameters.AddWithValue("@Soyad", soyad);
            komut.Parameters.AddWithValue("@TC", tc);
            komut.Parameters.AddWithValue("@Sifre", sifre);
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Parameters.AddWithValue("@KullaniciTipId", "3");
            komut.Connection = baglanti;
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }
    public static int mevcutmu(string tc)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select TC from KULLANICILAR where TC=@TC";
            komut.Parameters.AddWithValue("@TC", tc);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows.Count;

        }
        catch (Exception)
        {
            return -1;

        }
    }
    public static DataTable GirişYap(string tc, string sifre)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select Id, KullaniciTipId from KULLANICILAR where TC=@TC and Sifre=@Sifre and AktifMi=@AktifMi ";
            komut.Parameters.AddWithValue("@TC", tc);
            komut.Parameters.AddWithValue("@Sifre", sifre);
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception)
        {
            return null;
        }
    }

    public static string GetirAd(int id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "SELECT Ad, Soyad FROM KULLANICILAR WHERE Id=@Id ";
            komut.Parameters.AddWithValue("@Id", id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
            }
            else
            {
                return "";
            }
        }
        catch (Exception)
        {
            return "";
        }
    }
    public static string tcgetir(string id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "SELECT TC FROM KULLANICILAR WHERE Id=@Id";
            komut.Parameters.AddWithValue("@Id", id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();
        }
        catch (Exception)
        {
            return "";
        }
    }
    //public static string basvursayi(int id)
    //{
    //    try
    //    {
    //        SqlConnection baglanti = new SqlConnection(connstring);
    //        SqlCommand komut = new SqlCommand();
    //        komut.CommandText = "select COUNT (B.Baslik)   from BASVURULAR B , KULLANICILAR K where B.Kullanıcılarİd=@K.Id";
    //        komut.Parameters.AddWithValue("@K.Id", id);
    //        komut.Connection = baglanti;
    //        SqlDataAdapter da = new SqlDataAdapter(komut);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        return dt.Rows[0][0].ToString();
    //    }
    //    catch (Exception)
    //    {
    //        return "";
    //    }
    //}
    //public static int arastirma_baslik(string baslik)
    //{
    //    try
    //    {
    //        SqlConnection baglanti = new SqlConnection(connstring);
    //        SqlCommand komut = new SqlCommand();
    //        komut.CommandText = "insert into  BASVURULAR(Baslik)values(@Baslik) ";
    //        komut.Parameters.AddWithValue("@Baslik", baslik);
    //        komut.Connection = baglanti;
    //        baglanti.Open();
    //        komut.ExecuteNonQuery();
    //        baglanti.Close();

    //        return 1;
    //    }
    //    catch (Exception)
    //    {
    //        return 0;
    //    }
    //}
    public static string universitegetir(int id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select Ad from UNIVERSITELER where Id=@Id  ";
            komut.Parameters.AddWithValue("@Id", id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);

            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }
    public static string unvangetir(int id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select Ad from UNVANLAR where Id=@Id  ";
            komut.Parameters.AddWithValue("@Id", id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);

            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }
    public static DataTable getirbasvurularim(string userid)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select b.İd Id,b.Baslik,b.BasvuruTarihi,k.Ad Sonuc,b.KL_SonucTarihi SonucTarihi from BASVURULAR b , KARAR_LISTESI k where b.KararListaesiİd=k.Id and b.Kullanıcılarİd =@Kullanıcılarİd ";
            komut.Parameters.AddWithValue("@Kullanıcılarİd", userid);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception)
        {
            return null;
        }
    }

    public static int kaydet(string Baslik, string ArastirmaciSayisi, string CalistigiKurum, string UzmanlıkAlanı, string Adres, string Telefon, string FAX, string EPosta, string Amac, string GonulluSayisi, string KadinGonulluSayisi, string ErkekGonulluSayisi, string GonulluBilgisi, string Universitelerİd, string Unvanlarİd, string DogumTarihi, string İstatikselYontemler, string Kullanıcılarİd,string BasvuruTarihi, string DosyaModu,string BasvuruSahibId)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = " insert INTO BASVURULAR(Baslik, ArastirmaciSayisi,  CalistigiKurum, UzmanlıkAlanı, Adres, Telefon, FAX, EPosta, Amac, GonulluSayisi, KadinGonulluSayisi, ErkekGonulluSayisi, GonulluBilgisi, Universitelerİd, Unvanlarİd,DogumTarihi,İstatikselYontemler,Kullanıcılarİd,AktifMi,SilindiMi,KararListaesiİd,BasvuruTarihi,DosyaModu,BasvuruSahibId) VALUES(@Baslik, @ArastirmaciSayisi,@CalistigiKurum, @UzmanlıkAlanı, @Adres, @Telefon, @FAX,@EPosta, @Amac, @GonulluSayisi, @KadinGonulluSayisi, @ErkekGonulluSayisi, @GonulluBilgisi,@Universitelerİd, @Unvanlarİd , @DogumTarihi ,@İstatikselYontemler,@Kullanıcılarİd,@AktifMi,@SilindiMi,@KararListaesiİd,@BasvuruTarihi,@DosyaModu,@BasvuruSahibId)";
            komut.Parameters.AddWithValue("@Baslik", Baslik);
            komut.Parameters.AddWithValue("@ArastirmaciSayisi", ArastirmaciSayisi);
            komut.Parameters.AddWithValue("@DogumTarihi", DogumTarihi);
            komut.Parameters.AddWithValue("@CalistigiKurum", CalistigiKurum);
            komut.Parameters.AddWithValue("@UzmanlıkAlanı", UzmanlıkAlanı);
            komut.Parameters.AddWithValue("@Adres", Adres);
            komut.Parameters.AddWithValue("@Telefon", Telefon);
            komut.Parameters.AddWithValue("@FAX", FAX);
            komut.Parameters.AddWithValue("@EPosta", EPosta);
            komut.Parameters.AddWithValue("@Amac", Amac);
            komut.Parameters.AddWithValue("@GonulluSayisi", GonulluSayisi);
            komut.Parameters.AddWithValue("@KadinGonulluSayisi", KadinGonulluSayisi);
            komut.Parameters.AddWithValue("@ErkekGonulluSayisi", ErkekGonulluSayisi);
            komut.Parameters.AddWithValue("@GonulluBilgisi", GonulluBilgisi);
            komut.Parameters.AddWithValue("@Universitelerİd", Universitelerİd);
            komut.Parameters.AddWithValue("@Unvanlarİd", Unvanlarİd);
            komut.Parameters.AddWithValue("@İstatikselYontemler", İstatikselYontemler);
            komut.Parameters.AddWithValue("@Kullanıcılarİd", Kullanıcılarİd);
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Parameters.AddWithValue("@SilindiMi", "0");
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Parameters.AddWithValue("@BasvuruTarihi", BasvuruTarihi);
            komut.Parameters.AddWithValue("@DosyaModu", DosyaModu);
            komut.Parameters.AddWithValue("@BasvuruSahibId", BasvuruSahibId);

            komut.Connection = baglanti;
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }

    public static DataTable GetirBasvurular()
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select  b.İd,u.Ad+' '+kl.Ad+' '+kl.Soyad as AdSoyad ,b.Baslik,b.BasvuruTarihi,ka.Ad as Sonuc from BASVURULAR b, KULLANICILAR kl, KARAR_LISTESI ka, UNVANLAR u where kl.Id=b.Kullanıcılarİd and ka.Id=b.KararListaesiİd and u.Id=b.Unvanlarİd and b.SilindiMi=@SilindiMi and b.AktifMi=@AktifMi and b.KararListaesiİd=@KararListaesiİd order by b.İd desc";
            komut.Parameters.AddWithValue("@SilindiMi", "0");
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception)
        {
            return null;
        }

    }

    public static DataTable GetirSonucBasvurular()
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select b.İd,u.Ad+' '+kl.Ad+' '+kl.Soyad as Arastirmaci, b.Baslik, b.BasvuruTarihi, b.KL_SonucTarihi AS sonuctarihi,ka.Ad as Sonuc from BASVURULAR b,KULLANICILAR kl , KARAR_LISTESI ka,UNVANLAR u where  kl.Id=b.Kullanıcılarİd and ka.Id=b.KararListaesiİd and u.Id=b.Unvanlarİd and b.SilindiMi=@SilindiMi and b.AktifMi=@AktifMi  and b.KararListaesiİd!=@KararListaesiİd order by b.İd desc";
            komut.Parameters.AddWithValue("@SilindiMi", "0");
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception)
        {
            return null;
        }

    }

    public static int GetirAktifSayisi()
    {
        try
        {

            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select COUNT(*) from BASVURULAR where KararListaesiİd =@KararListaesiİd";
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count;
        }
        catch (Exception)
        {
            return -1;
        }
    }

    public static int GetirSonucSayisi()
    {
        try
        {

            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select COUNT (*) from BASVURULAR where KararListaesiİd !=@KararListaesiİd";
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count;
        }
        catch (Exception)
        {
            return -1;
        }
    }
    public static int arastirmaci(string Ad_Soyad, string Telefon, string E_Posta, string BasvurularId)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "insert into ARASTIRMACILAR (Ad_Soyad,Telefon,E_Posta,BasvurularId) values (@Ad_Soyad,@Telefon,@E_Posta,@BasvurularId)";
            komut.Parameters.AddWithValue("@Ad_Soyad", Ad_Soyad);
            komut.Parameters.AddWithValue("@Telefon", Telefon);
            komut.Parameters.AddWithValue("@E_Posta", E_Posta);
            komut.Parameters.AddWithValue("@BasvurularId", BasvurularId);

            komut.Connection = baglanti;
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }
    public static string getirbasvurid()
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "SELECT IDENT_CURRENT('BASVURULAR')  ";

            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);

            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }
    public static int insertmerkez(string Ad, string Iletisim, string BasvurularId)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "insert into ARASTIRMA_MERKEZLERI (Ad,Iletisim,BasvurularId)values(@Ad,@Iletisim,@BasvurularId)";
            komut.Parameters.AddWithValue("@Ad", Ad);
            komut.Parameters.AddWithValue("@Iletisim", Iletisim);
            komut.Parameters.AddWithValue("@BasvurularId", BasvurularId);

            komut.Connection = baglanti;
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }


    public static string getirraportorler( int Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "SELECT u.Ad+' '+ K.Ad+' '+K.Soyad AS AdSoyad FROM KULLANICILAR K,UNVANLAR u , BASVURULAR B WHERE K.KullaniciTipId=@KullaniciTipId AND B.Unvanlarİd=U.Id AND k.Id=b.Kullanıcılarİd AND U.Id=@Id";
            komut.Parameters.AddWithValue("@KullaniciTipId", "2");
            komut.Parameters.AddWithValue("@Id", Id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }


    public static string getirkarar(int Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select ka.Ad from KARAR_LISTESI ka where ka.Id=@Id ";
            komut.Parameters.AddWithValue("@Id", Id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }

    public static string getirraportorid(int Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select ku.Id from KULLANICILAR ku , BASVURULAR b where ku.KullaniciTipId=@KullaniciTipId and b.Unvanlarİd=@Unvanlarİd and b.Kullanıcılarİd=ku.Id";
            komut.Parameters.AddWithValue("@Unvanlarİd", Id);
            komut.Parameters.AddWithValue("@KullaniciTipId", "2");
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }


    public static int insertraportor(string Raportorler, string raportorlerid,string İd)
    {
        SqlConnection baglanti = new SqlConnection(connstring);
        try
        {
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "UPDATE BASVURULAR SET Raportorler = @Raportorler,raportorlerid=@raportorlerid WHERE İd=@İd ";
            komut.Parameters.AddWithValue("@Raportorler", Raportorler);
            komut.Parameters.AddWithValue("@raportorlerid", raportorlerid);
            komut.Parameters.AddWithValue("@İd", İd);
            komut.Connection = baglanti;
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            komut.ExecuteNonQuery();
            baglanti.Close();
            return 1;
        }
        catch (Exception)
        {
            if (baglanti.State == ConnectionState.Open)
            {
                baglanti.Close();
            }
            return 0;
        }
    }
    public static int updatekarar( string KararListaesiİd,string KL_Gerekceler,string KL_SonucTarihi, string İd)
    {
        SqlConnection baglanti = new SqlConnection(connstring);
        try
        {
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "UPDATE BASVURULAR SET KararListaesiİd = @KararListaesiİd,KL_Gerekceler=@KL_Gerekceler,KL_SonucTarihi=@KL_SonucTarihi WHERE İd=@İd ";
            komut.Parameters.AddWithValue("@KararListaesiİd", KararListaesiİd);
            komut.Parameters.AddWithValue("@KL_Gerekceler", KL_Gerekceler);
            komut.Parameters.AddWithValue("@KL_SonucTarihi", KL_SonucTarihi);
            komut.Parameters.AddWithValue("@İd", İd);
            komut.Connection = baglanti;
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            komut.ExecuteNonQuery();
            baglanti.Close();
            return 1;
        }
        catch (Exception)
        {
            if (baglanti.State == ConnectionState.Open)
            {
                baglanti.Close();
            }
            return 0;
        }
    }

    public static string getirrapor(int Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select b.Raportorler from BASVURULAR b where b.İd=@id";
            komut.Parameters.AddWithValue("@id", Id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }

    public static int insertdegerlendirme(string BasvurularId, string UyeId) 
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "insert into DEGERLENDIRME (BasvurularId,UyeId) values ( @BasvurularId,@UyeId)";
            komut.Parameters.AddWithValue("@BasvurularId", BasvurularId);
            komut.Parameters.AddWithValue("@UyeId", UyeId);
            

            komut.Connection = baglanti;
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }

    public static int updatdegerlendirme(string UyeId, string BasvurularId)
    {
        SqlConnection baglanti = new SqlConnection(connstring);
        try
        {
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "UPDATE DEGERLENDIRME SET UyeId = @UyeId WHERE BasvurularId=@BasvurularId ";
            komut.Parameters.AddWithValue("@UyeId", UyeId);
            komut.Parameters.AddWithValue("@BasvurularId", BasvurularId);
            komut.Connection = baglanti;
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            komut.ExecuteNonQuery();
            baglanti.Close();
            return 1;
        }
        catch (Exception)
        {
            if (baglanti.State == ConnectionState.Open)
            {
                baglanti.Close();
            }
            return 0;
        }
    }

    public static string getirdegerid( string BasvurularId)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select Id from DEGERLENDIRME where BasvurularId=@BasvurularId";
            komut.Parameters.AddWithValue("@BasvurularId", BasvurularId);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }

    public static string getirraporad(int Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select b.Raportorler from BASVURULAR b where raportorlerid=@id";
            komut.Parameters.AddWithValue("@id", Id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }

    public static DataTable GetiruyeBasvurular( string raportorlerid)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select  b.İd,u.Ad+' '+kl.Ad+' '+kl.Soyad as AdSoyad ,b.Baslik,b.BasvuruTarihi, b.KL_SonucTarihi as sonuc,ka.Ad as Durum  from BASVURULAR b, KULLANICILAR kl, KARAR_LISTESI ka, UNVANLAR u where kl.Id=b.Kullanıcılarİd and ka.Id=b.KararListaesiİd and u.Id=b.Unvanlarİd and b.SilindiMi=@SilindiMi and b.AktifMi=@AktifMi and b.KararListaesiİd=@KararListaesiİd and b.raportorlerid=@raportorlerid order by b.İd desc";
            komut.Parameters.AddWithValue("@SilindiMi", "0");
            komut.Parameters.AddWithValue("@AktifMi", "1");
            komut.Parameters.AddWithValue("@KararListaesiİd", "4");
            komut.Parameters.AddWithValue("@raportorlerid", raportorlerid);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception)
        {
            return null;
        }

    }

    public static string getirgonullu(string Id)
    {
        try
        {
            SqlConnection baglanti = new SqlConnection(connstring);
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select b.GonulluSayisi from BASVURULAR b where b.İd=@id";
            komut.Parameters.AddWithValue("@id", Id);
            komut.Connection = baglanti;
            SqlDataAdapter da = new SqlDataAdapter(komut);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            return dt.Rows[0][0].ToString();

        }
        catch (Exception)
        {
            return "";
        }
    }
}