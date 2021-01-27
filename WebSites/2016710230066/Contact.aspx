<%@ Page Title="iletişim" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 aria-expanded="false"><%: Title %></h2>
    <%--<h3>İletişim</h3>--%>
    <address>
        Karabük Üniversitesi Demir Çelik Kampüsü<br />
        Tıp Fakültesi Dekanlığı Kat 4 Etik Kurulu Sekreteryası<br />
        78050 KARABÜK<br />
       <%-- <abbr title="Phone">P:</abbr>
        425.555.0100--%>
    </address>

    <address>
        <strong>Karabük Üniversitesi Telefon:</strong>   444 0  478 <br /> 
        <strong>Telefon:</strong>   0370 418 94 45 - 0370 418 94 46 <br /> 
        <strong>Fax:</strong>   0370 418 92 99<br /> 
        <strong>E-Posta:</strong> <a href="mailto:giroletik@karabuk.edu.tr">giroletik@karabuk.edu.tr</a>
    </address>
    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Karabük Üniversitesi Etik Kurul Yönetim Sistemi</p>
    </footer>
</asp:Content>