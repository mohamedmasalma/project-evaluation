<%@ Page Title="Başkan Sayfası" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Baskan.aspx.cs" Inherits="Account_Baskan" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <asp:Panel ID="Panel1" runat="server" > 
    <Table ID="Table9" runat="server" Width="1297px"  class="auto-style46" style=" border-style: none; border-width: inherit; border-color: #FFFFFF; margin-bottom: 0px; margin-right: 0px; height: 82px;">
    <tr runat="server"  Width="1306px"  >
    <td runat="server" style="border-style: none"> <h1 style="font-size:30px; height: 53px; width: 395px;"> Prof. Dr. Bünyamin ŞAHİN</h1></td>
    <td runat="server" HorizontalAlign="Right" style="border-style: none; text-align:Right;">
    <asp:Button ID="Button1" runat="server" Text="Çıkış" Height="48px" Width="104px" BorderColor="#CCCCCC" OnClick="Button1_Click"  /></td>
    </tr></Table>
    </asp:Panel>
      
    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>



    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/>  
    
    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <asp:Panel ID="Panel2" runat="server" Width="1294px"  style="color:green;" > Aktif Başvuru Sayısı:
    <asp:Label ID="Label1" runat="server" Text="Label">  </asp:Label>
    </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    
    <asp:Panel ID="Panel3" runat="server" style="margin-top: 3px" Width="1301px"  >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="936px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   >
            <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="İd" HeaderText="Araştırma Id" ItemStyle-Width="100" />
                <asp:BoundField DataField="AdSoyad" HeaderText="Araştırmacı" ItemStyle-Width="120" />
                <asp:BoundField DataField="Baslik" HeaderText="Araştırmanın Başlığı" ItemStyle-Width="300" />
                <asp:BoundField DataField="BasvuruTarihi" HeaderText="Geliş Tarihi" ItemStyle-Width="120" />
                <asp:BoundField DataField="Sonuc" HeaderText="Durumu" ItemStyle-Width="120" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkselect" runat="server" OnClick="lnkselect_Click" Text="seçiniz" ItemStyle-Width="120" AutoPostBack="True"  />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

      <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <asp:Panel ID="Panel4" runat="server" style="color:green;" Width="1284px"> Sonuçlanan Başvuru Sayısı:
    <asp:Label ID="Label2" runat="server" Text="Label">
    </asp:Label></asp:Panel>

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

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

    <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


    <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Center" Width="1284px">
    <asp:Button ID="Button2" runat="server" Text="Başvuru Dosyası İndir" BorderColor="#CCCCCC" />
    </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <asp:Panel ID="Panel7" runat="server" Width="1284px" Visible="False">
        <Table ID="Table1" runat="server" style="width: 491px">
        <tr>
            <th style="text-align: right; height: 22px;" > Başvuru İd  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="height: 22px"> <asp:Label ID="Label3" runat="server" Text=" "></asp:Label> </th> 
        </tr>
        <tr>
            <th style="text-align: right" > Görevli Raportör </th> <th style="width: 29px"> </th>
            <th> <asp:Label ID="Label4" runat="server" Text="Atama Yapılmadı"></asp:Label> </th> 
        </tr>
        <tr>
            <th style="text-align: right" > İnceleyen Üye Sayısı</th> <th style="width: 29px"> </th>
            <th> <asp:Label ID="Label5" runat="server" Text="0/3"></asp:Label></th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  </th> 
        </tr>
        </Table> 
    </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

     <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <asp:Panel ID="Panel10" runat="server" Visible="False"> 
        <Table ID="Table2" runat="server" style="width: 521px; text-align: right;">
        <tr>
            <th style="text-align: right; width: 190px;" > Raportörler  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="297px" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px; margin-left: 7px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>  </th> 
        </tr>
        <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  </th> 
        </tr>
        <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:Button ID="Button3" runat="server" Text="Raportör Ata ve Üyeleri Gönder" BorderColor="#CCCCCC" OnClick="Button3_Click" Visible="False" /> <asp:Button ID="Button6" runat="server" Text="Raportörler Değiştir" BorderColor="#CCCCCC" Visible="False" OnClick="Button6_Click" /> </th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  
                <asp:Label ID="Label6" runat="server"></asp:Label>
                 </th> 
        </tr>
        </Table>
     </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>



     <asp:Panel ID="Panel8" runat="server" Visible="False"> 
        <Table ID="Table3" runat="server" style="width: 521px; text-align: right;">
        <tr>
            <th style="text-align: right; width: 190px;" > Kararlar  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="297px" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px; margin-left: 7px;" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>  </th> 
        </tr>
        <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </th> 
        </tr>
        <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:RadioButton ID="RadioButton1" runat="server" Text="oy birliği" />  
                <asp:RadioButton ID="RadioButton2" runat="server" Text="oy çokluğu" />
            </th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" > Gerekçeler  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:TextBox ID="TextBox1" runat="server" Height="56px" Width="285px" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px; margin-left: 7px;"></asp:TextBox> </th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  </th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left"> <asp:Button ID="Button4" runat="server" Text="Toplantı Sonuçlandır" BorderColor="#CCCCCC" Height="28px" style="margin-top: 0" Width="144px" OnClick="Button4_Click" /><asp:Button ID="Button5" runat="server" Text="Tabloları Yenile" BorderColor="#CCCCCC" style="margin-top: 1" Width="144px" Height="28px" />  </th> 
        </tr>
             <tr>
            <th style="text-align: right; width: 190px;" >  </th> <th style="height: 22px; width: 29px;"> </th>
            <th style="text-align: left">  </th> 
        </tr>
        </Table>
     </asp:Panel>

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

   <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Karabük Üniversitesi Etik Kurul Yönetim Sistemi</p>
    </footer>
     <hr style="height: 5px; width: 1292px; margin-top: 0px; margin-bottom: 0px;" /><br/> 

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
</asp:Content>