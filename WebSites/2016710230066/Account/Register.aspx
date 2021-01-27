<%@ Page Title="kayıt sayfası" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 aria-expanded="false"><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Yeni Hesap Tanımı</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">TC Kimlik No:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="TC Kimlik No Boş Bırakılamaz." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Şifre:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Şifre Boş Bırakılamaz." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Şifre(Tekrar)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Tekrar Şifre Boş Bırakılamaz." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Şifre ile Tekrar şifre aynı olmalıdır." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtAd" CssClass="col-md-2 control-label">Ad:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtAd"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAd"
                    CssClass="text-danger" ErrorMessage="Ad Boş Bırakılamaz." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSoyad" CssClass="col-md-2 control-label">Soyad:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSoyad"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSoyad"
                    CssClass="text-danger" ErrorMessage="Soyad Boş Bırakılamaz." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Kayıt Ol" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

