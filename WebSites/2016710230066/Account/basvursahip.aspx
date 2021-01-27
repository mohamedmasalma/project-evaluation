<%@ Page Title="Başvuru Sahibi Sayfası" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="basvursahip.aspx.cs" Inherits="Account_basvursahip" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 aria-expanded="false" class="auto-style48"><%: Title %>.</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Table ID="Table9" runat="server" Width="1297px" class="auto-style46" style=" border: thin inset #C0C0C0;margin-bottom: 0px; margin-right: 0px;">
        <tr runat="server"  Width="1306px"  >
            <td runat="server"> <h1 style="font-size:30px; height: 53px; width: 235px;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</h1></td>
            <td runat="server" HorizontalAlign="Right" style="text-align:Right;"> <asp:Button ID="Button1" runat="server" Text="çıkış" Height="48px" Width="104px" OnClick="Button1_Click" />
</td>
        </tr>
    </Table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<hr style="margin-top: 0px; margin-bottom: 0px;" class="auto-style47" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p style="color:blue;">Yapılan başvuru sayısı:&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label2" runat="server" Text="başvurusayı"></asp:Label></p>
    <p style="color:blue;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="1305px">
            <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Araştırma Id" ItemStyle-Width="100" />
                <asp:BoundField DataField="Baslik" HeaderText="Araştırma Başlığı" ItemStyle-Width="300" />
                <asp:BoundField DataField="BasvuruTarihi" HeaderText="Başvuru Tarihi" ItemStyle-Width="120" />
                <asp:BoundField DataField="Sonuc" HeaderText="Durumu" ItemStyle-Width="120" />
                <asp:BoundField DataField="SonucTarihi" HeaderText="Sonuç Tarihi" ItemStyle-Width="120" />
                <asp:ButtonField  HeaderText="Dosya İndir" text="MMB-dosyasi" ItemStyle-Width="50" />



            </Columns>

        </asp:GridView>
    </p>
       <hr style="height: -15px; width: 1553px; margin-top: 0px; margin-bottom: 0px;" /><br/>
     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <Table ID="Table8" runat="server" GridLines="Vertical" Height="179px" Width="1305px" border="1" style=" border: thin inset #C0C0C0;margin-bottom: 0px; margin-right: 0px;" >
        <tr runat="server" Height="200px" HorizontalAlign="Left" VerticalAlign="Middle" style=" border: thin inset #C0C0C0;margin-bottom: 0px; margin-right: 0px;" >
                <td runat="server" HorizontalAlign="Center" VerticalAlign="Middle" class="auto-style25" style="text-align:center;"><asp:Image ID="Image1" runat="server" Height="100" Width="200" ImageUrl="~/karabuk.JPG" /></td>
               <td runat="server" HorizontalAlign="Right" VerticalAlign="Middle"> <p style="text-align:center;"><strong>T.C.<br/> KARABÜK ÜNİVERSİTESİ<br/> GİRİŞİMSEL OLMAYAN KLİNİK ARAŞTIRMALAR<br/> ETİK KURULU BAŞVURU FORMU</strong> </p></td>
            </tr>
   </Table>
        
     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
  

    <Table ID="Table1" runat="server" Height="380px" Width="1306px" GridLines="horizontal"  style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
          
            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style29"><strong>1.  Araştırmanın Başlığı*:</strong></td>
                <td runat="server" class="auto-style30" ></td>
            </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style23"> <asp:TextBox ID="TextBox1" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                 <td runat="server"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style29"><strong>2.  Araştırmacı sayısı*:</strong> <i>(Sorumlu araştırmacı dahil en fazla 6 kişi seçilebilir)</i></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style30"><asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="500px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
                    <asp:ListItem Value="0" Text="seçiniz"></asp:ListItem>
                    <asp:ListItem Value="1" Text="1"></asp:ListItem><asp:ListItem Value="2" Text="2"></asp:ListItem>
                    <asp:ListItem Value="3" Text="3"></asp:ListItem><asp:ListItem Value="4" Text="4"></asp:ListItem>
                    <asp:ListItem Value="5" Text="5"></asp:ListItem><asp:ListItem Value="6" Text="6"></asp:ListItem>
                   </asp:DropDownList></td>
            </tr>



            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style29"><strong>3.1.  Sorumlu Araştırmacının Bilgileri:</strong> </td>
                <td runat="server" class="auto-style30"></td>
            </tr>



             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.1.  Adı Soyadı:</strong> </td>
                 <td runat="server" class="auto-style30"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.2.  TC No:</strong></td>
                 <td runat="server" Width="200" class="auto-style30"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.3.  Doğum Tarihi:*</strong></td>
                <td runat="server"   class="auto-style30" > <asp:DropDownList ID="DropDownList2" runat="server" Height="25" Width="155px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem Value="0" Text="Günü seçiniz"></asp:ListItem></asp:DropDownList>
                    <asp:DropDownList  ID="DropDownList3" runat="server" Height="25" Width="155" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem Value="0" Text="Ayı seçiniz"></asp:ListItem></asp:DropDownList>
                    <asp:DropDownList  ID="DropDownList4" runat="server" Height="25" Width="155" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem Value="0" Text="Yılı seçiniz"></asp:ListItem></asp:DropDownList> </td>
             </tr>



             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.4.  Son Mezun Olunan Üniversite*:</strong></td>
                 <td runat="server"  class="auto-style21">
                     <asp:DropDownList ID="DropDownList5" runat="server" Height="25" Width="500"  style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true"><asp:ListItem Value="0" Text="seçiniz"></asp:ListItem></asp:DropDownList></td>
             </tr>



             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.5.  Unvanı*:</strong></td>
                 <td runat="server"  class="auto-style9">
                     <asp:DropDownList ID="DropDownList6" runat="server" Height="25" Width="500"   style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" AutoPostBack="true"><asp:ListItem Value="0" Text="seçiniz"></asp:ListItem></asp:DropDownList>
                     
                 </td>
                 
             </tr>
       


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.6.  Çalıştığı Kurum:</strong></td>
                 <td runat="server"  class="auto-style32">
                     <asp:TextBox ID="TextBox2" runat="server" Height="35" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.7.  Uzmanlık Alanı:</strong></td>
                 <td runat="server"  class="auto-style24"></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style23">
                     <asp:TextBox ID="TextBox3" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                 <td runat="server"></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
             
                 <td runat="server" class="auto-style29"><strong>3.1.8.  Açık Adresi*:</strong></td>
                 <td runat="server" class="auto-style7"></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style23">
                     <asp:TextBox ID="TextBox4" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                 <td runat="server"></td>
             </tr>



             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style33"><strong>3.1.9.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                 <td runat="server"  class="auto-style34"> <asp:TextBox ID="TextBox5" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style29"><strong>3.1.10.  Fax Numarası:</strong>(Ör:5321234567)</td>
                 <td runat="server"  class="auto-style15">
                     <asp:TextBox ID="TextBox6" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
             </tr>


             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                 <td runat="server" class="auto-style35"><strong>3.1.11.  E-Posta Adresi*:</strong></td>
                 <td runat="server" class="auto-style36"><asp:TextBox ID="TextBox7" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" ></asp:TextBox></td>
             </tr>

     
   </Table>
       
    
     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%> 
    <style>
table,  th {
  border: 1px solid grey;
  border-collapse: collapse;
}
   

    </style>
     <Table ID="Table2" runat="server" GridLines="Horizontal" Height="183px" HorizontalAlign="Left" Width="1304px" Visible="False" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"   >
           
         
          <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.  Diğer Araştırmanın bilgileri:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38">
                    &nbsp;</td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.1.1.  Adı Soyadı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox8" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.1.2.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox9" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.1.3.  E-Posta Adresi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox10" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>
            
            
        </Table>

      
    
     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    
    
       
    <style>
table,  th {
  border: 1px solid grey;
  border-collapse: collapse;
}

    </style>
        <Table ID="Table3" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" Visible="False" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
           
            
             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.  Diğer Araştırmanın bilgileri:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.2.1.  Adı Soyadı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"> <asp:TextBox ID="TextBox11" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.2.2.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox12" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style39"><strong>4.2.3.  E-Posta Adresi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style32"><asp:TextBox ID="TextBox13" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>
        </Table> 
           


     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>




    <style>
table,  th {
  border: 1px solid grey;
  border-collapse: collapse;
}

    </style>
        <Table ID="Table10" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" Visible="False" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"  >
           
            
             <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.  Diğer Araştırmanın bilgileri:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style39"><strong>4.3.1.  Adı Soyadı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style32"> <asp:TextBox ID="TextBox21" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.3.2.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox22" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.3.3.  E-Posta Adresi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox23" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>
        </Table> 



     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    <Table ID="Table11" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" Visible="False" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
          
        
          <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.  Diğer Araştırmanın bilgileri:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.4.1.  Adı Soyadı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"> <asp:TextBox ID="TextBox24" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.4.2.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox25" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.4.3.  E-Posta Adresi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox26" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>
        </Table> 

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

    <Table ID="Table12" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" Visible="False"  style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.  Diğer Araştırmanın bilgileri:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.5.1.  Adı Soyadı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"> <asp:TextBox ID="TextBox27" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.5.2.  Telefon Numarası*:</strong>(Ör:5321234567)</td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox28" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style37"><strong>4.5.3.  E-Posta Adresi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38"><asp:TextBox ID="TextBox29" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>
        </Table> 

   <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

        <Table ID="Table4" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"  >
         <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style40"><strong>5.  Araştırmanın Amaç ve Gerekçesi:</strong></td>
                <td runat="server" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style19"><asp:TextBox ID="TextBox14" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                <td runat="server"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style41"><strong>6.  Araştırmanın Materyal, Metot, Beklenen Sonuç ve Literatür Bilgisi*:</strong>(Sadece pdf dosyası yüklenebilir)</td>
                <td runat="server" aria-orientation="horizontal" class="auto-style42"><asp:FileUpload ID="FileUpload1"  runat="server" style="display:none;" onchange="upload()" />
                    <input type="button" value="Dosyayı yükleyiniz" onclick="showBrowseDialoge()" />
                    <asp:Button ID="hideButton" runat="server" Text="" style="display:none;" OnClick="uploadButton_Click" Height="23px" Width="129px" CssClass="btn btn-default" />
                    <script type="text/javascript" language="javascript">


                        function showBrowseDialoge() {
                            var fileuploadctr1 = document.getElementById('<%=FileUpload1.ClientID  %>');
                            fileuploadctr1.click();
                        }

                        function upload() {
                            var btn = document.getElementById('<%=hideButton.ClientID  %>');
                            btn.click();
                        }
                    </script>
                    <asp:Label ID="Label8" runat="server" CssClass="text-info"></asp:Label> </td>
            </tr>
       </Table> 
        <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
           
    <style>
table,  th {
  border: 1px solid grey;
  border-collapse: collapse;
}

    </style>
        <Table ID="Table5" runat="server" Height="221px" Width="1306px" GridLines="Horizontal" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" >
            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style43"><strong>7.  Araştırma Hakkında Genel Bilgiler:</strong></td>
                <td runat="server" class="auto-style43"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style44"><strong>7.1.  Araştırmadaki Toplam Gönüllü Sayısı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style8"><asp:TextBox ID="TextBox15" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style44"><strong>7.2.  Kadın Gönüllü Sayısı:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style44"><asp:TextBox ID="TextBox16" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style44"><strong>7.3.  Erkek Gönüllü Sayısı:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style44"><asp:TextBox ID="TextBox17" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style44"><strong>7.4.  Gönüllüler ile ilgili diğer bilgiler:</strong>(Eğer varsa)</td>
                <td runat="server" class="auto-style44"></td>
            </tr>
            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style20">
                    <asp:TextBox ID="TextBox18" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                <td runat="server"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style44"><strong>7.5.  Araştırma Çıktıları ve İstatistiksel Olarak Değerlendirme Detay Bilgisi:</strong></td>
                <td runat="server" class="auto-style44"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style20">
                    <asp:TextBox ID="TextBox19" runat="server" Height="100" Width="200" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox></td>
                <td runat="server"></td>
            </tr>

        </Table>
        

     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>




     <Table ID="Table6" runat="server" Height="56px" Width="1306px" GridLines="horizontal"  style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
            <tr runat="server">
                <td runat="server" class="auto-style40"><strong>8.  Araştırmanın yapılacağı Merkez Sayısı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38">
                    <asp:DropDownList ID="DropDownList7" runat="server"  Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" AutoPostBack="true" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                        <asp:ListItem Value="0" Text="seçiniz"></asp:ListItem>
                        <asp:ListItem Value="1" Text="0"></asp:ListItem>
                        <asp:ListItem Value="2" Text="1"></asp:ListItem>
                        <asp:ListItem Value="3" Text="2"></asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>

        </Table>

       
     <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    

    <Table ID="Table13" runat="server" GridLines="Horizontal" HorizontalAlign="Left" Width="1304px" Visible="false" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" class="auto-style53"   >
           
         
          <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style49"><strong>8.1.1.  Merkez Adı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style50">
                    <asp:TextBox ID="TextBox20" runat="server"  Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox>   </td>
            </tr>
                    <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style51"><strong>8.1.2. iletişim Bilgisi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style52">
                    <asp:TextBox ID="TextBox30" runat="server"  Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox>   </td>
            </tr>

        </Table>


        <%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
    

      <Table ID="Table14" runat="server" GridLines="Horizontal" HorizontalAlign="Left" Width="1304px" Visible="false" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;" class="auto-style54"   >
           
         
          <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style40"><strong>8.2.1.  Merkez Adı*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style38">
                    <asp:TextBox ID="TextBox31" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox>   </td>
            </tr>
                    <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style55"><strong>8.2.2. iletişim Bilgisi*:</strong></td>
                <td runat="server" HorizontalAlign="Right" class="auto-style56">
                    <asp:TextBox ID="TextBox32" runat="server" Height="25" Width="500" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;"></asp:TextBox>   </td>
            </tr>

        </Table>


  <%--  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>
     
    <style>
table,  th {
  border: 1px solid grey;
  border-collapse: collapse;
}

      

        .auto-style7 {
            width: 533px;
            height: 49px;
        }
        .auto-style8 {
            width: 535px;
            height: 50px;
        }
        .auto-style9 {
            width: 538px;
            height: 49px;
        }
        .auto-style15 {
            width: 524px;
            height: 49px;
        }
        .auto-style19 {
            width: 642px;
        }
        .auto-style20 {
            width: 521px;
        }
        .auto-style21 {
            width: 641px;
            height: 49px;
        }
        .auto-style23 {
            width: 618px;
        }

      

        .auto-style24 {
            width: 505px;
            height: 49px;
        }
        .auto-style25 {
            width: 405px;
        }

      

        .auto-style29 {
            width: 618px;
            height: 49px;
        }
        .auto-style30 {
            width: 521px;
            height: 49px;
        }
        .auto-style32 {
            height: 49px;
        }
        .auto-style33 {
            width: 618px;
            height: 46px;
        }
        .auto-style34 {
            width: 521px;
            height: 46px;
        }
        .auto-style35 {
            width: 618px;
            height: 51px;
        }
        .auto-style36 {
            height: 51px;
        }
        .auto-style37 {
            width: 640px;
            height: 50px;
        }
        .auto-style38 {
            height: 50px;
        }
        .auto-style39 {
            width: 640px;
            height: 49px;
        }
        .auto-style40 {
            width: 642px;
            height: 50px;
        }
        .auto-style41 {
            width: 642px;
            height: 53px;
        }
        .auto-style42 {
            height: 53px;
        }
        .auto-style43 {
            width: 521px;
            height: 51px;
        }
        .auto-style44 {
            width: 521px;
            height: 50px;
        }
        .auto-style45 {
            width: 643px;
            height: 50px;
        }

      

        .auto-style46 {
            height: 78px;
            margin-top: 31px;
        }
        .auto-style47 {
            height: 3px;
            width: 1553px;
        }
        .auto-style48 {
            height: 71px;
        }

      

        .auto-style49 {
            width: 642px;
            height: 7px;
        }
        .auto-style50 {
            height: 7px;
        }
        .auto-style51 {
            width: 642px;
            height: 13px;
        }
        .auto-style52 {
            height: 13px;
        }
        .auto-style53 {
            height: 134px;
        }
        .auto-style54 {
            height: 130px;
        }
        .auto-style55 {
            width: 642px;
            height: 47px;
        }
        .auto-style56 {
            height: 47px;
        }

      

    </style>
        <Table ID="Table7" runat="server" GridLines="Horizontal" Height="221px" Width="1306px" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style45"><strong>9.  Başvuru Sahibinin:</strong></td>
                <td runat="server" class="auto-style38"></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style45"><strong>9.1.  Adı Soyadı:</strong></td>
                <td runat="server" class="auto-style38">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style45"><strong>9.2.  Başvuru Tarihi:</strong></td>
                <td runat="server" class="auto-style38">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>


            <tr runat="server" style="border: thin inset #C0C0C0; margin-bottom: 0px; margin-right: 0px;">
                <td runat="server" class="auto-style45"><strong>9.3.  İmza:</strong></td>
                <td runat="server" class="auto-style38"></td>
            </tr>
        </Table>

     Başvuru formunun tüm bölümleri eksiksiz olarak doldurulması gerekmektedir.<br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button2" runat="server" Text="ileri" Width="68px" OnClick="Button2_Click" />
    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    </asp:Content>