<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="uye.aspx.cs" Inherits="Account_uye" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

     <asp:Panel ID="Panel1" runat="server" > 
    <Table ID="Table1" runat="server" Width="1297px"  class="auto-style46" style=" border-style: none; border-width: inherit; border-color: #FFFFFF; margin-bottom: 0px; margin-right: 0px; height: 82px;">
    <tr runat="server"  Width="1306px"   >
    <td runat="server" style="border-style: none"> <h1 style="font-size:30px; height: 53px; width: 395px;">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1></td>
    <td runat="server" HorizontalAlign="Right" style="border-style: none; text-align:Right;">
    <asp:Button ID="Button1" runat="server" Text="Çıkış" Height="48px" Width="104px" BorderColor="#CCCCCC" OnClick="Button1_Click"  /></td>
    </tr></Table>
    </asp:Panel>
    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/>

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

      <asp:Panel ID="Panel2" runat="server" Width="1294px"  style="color:green;" > Aktif Rapörtör Görevli Olduğum Başvuru Sayısı:
    <asp:Label ID="Label2" runat="server" Text="Label">  </asp:Label>
    </asp:Panel>

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
     <asp:Panel ID="Panel3" runat="server" style="margin-top: 3px" Width="1301px"  >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="936px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   >
            <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="İd" HeaderText="Araştırma Id" ItemStyle-Width="100" />
                <asp:BoundField DataField="AdSoyad" HeaderText="Araştırmacı" ItemStyle-Width="120" />
                <asp:BoundField DataField="Baslik" HeaderText="Araştırmanın Başlığı" ItemStyle-Width="300" />
                <asp:BoundField DataField="BasvuruTarihi" HeaderText="Geliş Tarihi" ItemStyle-Width="120" />
                <asp:BoundField DataField="sonuc" HeaderText="Değerlendirme Tarihi" ItemStyle-Width="120" />
                <asp:BoundField DataField="Durum" HeaderText="Durumu" ItemStyle-Width="120" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkselect" runat="server" Text="seçiniz" ItemStyle-Width="120" OnClick="lnkselect_Click" AutoPostBack="True"  />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>

<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

      <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
        <asp:Panel ID="Panel4" runat="server" style="color:green;" Width="1284px">  Aktif Üye Görevli Olduğum Başvuru Sayısı:
    <asp:Label ID="Label3" runat="server" Text="Label">
    </asp:Label></asp:Panel>

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
      <asp:Panel ID="Panel5" runat="server" Width="1284px">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" Width="937px" >
        <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
         <Columns>
                <asp:BoundField DataField="İd" HeaderText="Araştırma Id" ItemStyle-Width="100" />
                <asp:BoundField DataField="Arastirmaci" HeaderText="Araştırmacı" ItemStyle-Width="120" />
                <asp:BoundField DataField="Baslik" HeaderText="Araştırmanın Başlığı" ItemStyle-Width="300" />
                <asp:BoundField DataField="BasvuruTarihi" HeaderText="Geliş Tarihi" ItemStyle-Width="120" />
             <asp:BoundField DataField="sonuctarihi" HeaderText="Sonuç Tarihi" ItemStyle-Width="120" />
                <asp:BoundField DataField="Sonuc" HeaderText="Durumu" ItemStyle-Width="120" />
              
             </Columns>
    </asp:GridView>
    </asp:Panel>

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    
    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

      <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
     <asp:Panel ID="Panel6" runat="server" > 
    <Table ID="Table2" runat="server" Width="1297px"  class="auto-style46" style=" border-style: none; border-width: inherit; border-color: #FFFFFF; margin-bottom: 0px; margin-right: 0px; height: 82px;">
    <tr runat="server"  Width="1306px"  >
    <td runat="server" style="border-style: none"> <p style="text-align:center;"><strong>T.C.<br/> KARABÜK ÜNİVERSİTESİ<br/> GİRİŞİMSEL OLMAYAN KLİNİK ARAŞTIRMALAR ETİK KURULU<br/>  PROJE DEĞERLENDİRME FORMU</strong> </p>
    </td>
   
    </tr></Table>
    </asp:Panel>
<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
         <asp:Panel ID="Panel7" runat="server" Height="22px" >
      <style>p.round3 {
  border: 2px solid grey;
  border-radius: 5px;
  vertical-align: middle
}p.newspaper {
  column-count: 3;
}
</style>
           
  
    <Table ID="Table3" runat="server" Width="1297px"  style="border: thin solid #CCCCCC" class="auto-style2"> 

    <tr runat="server" > 
    <td runat="server" ><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;"  ><strong >Başvuru Id:</strong></p></td>
        <td runat="server" class="auto-style1" colspan="1"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;" >
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p></td>
        <td runat="server" class="auto-style1"  ><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 322px;"><strong>Geliş Tarihi:</strong></p></td>
    <td runat="server" class="auto-style1"  ><p class="round3" style="border-color: #CCCCCC; border-width: thin; height:35px; width: 322px;">
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p></td>
         
            </tr>

   
        
  
        <tr runat="server" >
             <td runat="server" class="auto-style29"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 322px; margin-top: 0;"  ><strong >Araştırma Yürütücüsü:</strong></p></td>
             <td runat="server" class="auto-style29" width="973px" colspan="3">                     <p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 972px;">
                         <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                     </p></td>
             
         </tr>

         <tr runat="server" >
             <td runat="server" class="auto-style29"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 322px; margin-top: 0;"  ><strong >Araştırmanın Başlığı:</strong></p></td>
             <td runat="server" class="auto-style29" width="973px" colspan="3"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 972px;"  >
                 <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</p>
                 
             </td>
             
         </tr>
                 <tr runat="server" >
             <td runat="server" class="auto-style29" colspan="2"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 648px; margin-top: 0;"  ><strong >Araştırmaya dahil edilen gönüllü sayısı:</strong></p></td>
             <td runat="server" class="auto-style29" width="973px" colspan="2"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 35px; width: 648px;">
                     <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                 </p></td>
             
         </tr>
        
         </Table>
     
  

         
<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


 
           
  
    <Table ID="Table4" runat="server" Width="1297px"  style="border: thin solid #CCCCCC" class="auto-style6"> 

    <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma daha önce yapılmış mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="Evet" runat="server" Text="Evet" /><asp:RadioButton ID="Hayır" runat="server" Text="Hayır" />
    </p></td>
        </tr>

        <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma bİr hipotezi test etmek üzere planlanmış mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton2" runat="server" Text="Hayır" />
    </p></td>
             </tr>
            <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma sonucunda ölçülebilir bir hedefe ulaşmak olası mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton3" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton4" runat="server" Text="Hayır" />
    </p></td>

         
            </tr>
         <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma çağdaş bilime katkıda bulunacak nitelikte midir?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton5" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton6" runat="server" Text="Hayır" />
    </p></td> </tr>

         <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma metodolojik  yönden doyurucu olarak planlanmış mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton7" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton8" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma protokolünde gönüllü sayıları gerçekçi midir?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton9" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton10" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırmanın istatistik bilgileri yeterli midir?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton11" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton12" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma için en uygun sayıda gönüllü kullanımı amaçlanmış mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton13" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton14" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma gönüllülerin aydınlatılmış onamı alınmış mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton15" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton16" runat="server" Text="Hayır" />
    </p></td> </tr>


             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırmacı(lar) çalışma ile ilgili yeterli bilgi ve deneyime sahip midir?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton17" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton18" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırmada çevre ve/veya ınsan sağlığını tehdit edecek toksik rezidü, kimyasal, biyolojik, radyoaktif maddelerin bulaşma riski var mıdır?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton19" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton20" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 972px;"  >Araştırma sonunda yayın çıkarabilecek nitelikte midir?</p></td>
    <td runat="server" class="auto-style1"  colspan="1" style="text-align: center"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 322px;">
    <asp:RadioButton ID="RadioButton21" runat="server" Text="Evet" /><asp:RadioButton ID="RadioButton22" runat="server" Text="Hayır" />
    </p></td> </tr>

             <tr runat="server" > 
    <td runat="server" colspan="2" class="auto-style5"><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 37px; width: 1296px;"  >Gerekli görülen diğer açıklamalar:</p></td>
        </tr>

             <tr runat="server" > 
    <td runat="server" colspan="2" class="auto-style4" ><p class="round3" style="border-color: #CCCCCC; border-width: thin; height: 200px; margin-top: 0;"  >
        <asp:TextBox ID="TextBox1" runat="server" Height="199px" Width="298px"></asp:TextBox>
         
         </p></td>
        </tr>
           </Table>
             <table id="Table5" runat="server" class="auto-style3" height="38px" style="border: thin solid #CCCCCC" width="1297px">
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton23" runat="server" Text="uygun görülmüştür." />
                 </td>
             </tr>
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton24" runat="server" Text="değişiklik: Eksik kısımların tamamlanması gerek görülmüştür." />
                 </td>
             </tr>
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton25" runat="server" Text="değişiklik: Düzeltme gerekli görülmüştür." />
                 </td>
             </tr>
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton26" runat="server" Text="değişiklik: Ek literatür bilgisi istenmesi gerekli görülmüştür." />
                 </td>
             </tr>
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton27" runat="server" Text="değişiklik: Araştırmacılarla görüşme gerekli görülmüştür." />
                 </td>
             </tr>
             <tr runat="server">
                 <td runat="server">
                     <asp:RadioButton ID="RadioButton28" runat="server" Text="uygun görülmemiştir." />

                 </td>
             </tr>
        </table>
             
            <Table ID="Table6" runat="server" class="auto-style1" >
                <tr runat="server">
                    <td Width="280px">

                    </td>
                    <td style="text-align: right">
                        <asp:Button ID="Button2" runat="server" Text="Başvuru Dosyası indir" CssClass="auto-style3" Width="218px" /></td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button4" runat="server" Text="Tamamla ve Belge Göster" Width="228px" /></td>
                      <td style="text-align: left">
                        <asp:Button ID="Button3" runat="server" Text="Tabloları Yenile" Width="225px" /></td>
                   
                </tr>
            </Table>

               <hr class="auto-style8" /><br/>
              <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Karabük Üniversitesi Etik Kurul Yönetim Sistemi</p>
    </footer>
   

          </asp:Panel>

    
<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>



      
                      
                   
                      </asp:Content>
