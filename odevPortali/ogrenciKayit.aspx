<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli.Master" AutoEventWireup="true" CodeBehind="ogrenciKayit.aspx.cs" Inherits="odevPortali.ogrenciKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container"  style="margin:50px 0 0 350px;">
            <div class="row">
             <div class="col-md-8 alert alert-info">
        <div id="KayitForm">
          <h3>Öğrenci Kayıt Formu</h3>
          <label>Adı Soyadı*</label>
          <asp:TextBox ID="txtAdsoyad" runat="server" CssClass="form-control"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Adı Soyadı Griniz" CssClass="text-danger" ControlToValidate="txtAdsoyad" runat="server" ValidationGroup="y"></asp:RequiredFieldValidator><br />
          <label>Öğrenci Numarası*</label>
          <asp:TextBox ID="txtOgrNo" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Numara Giriniz" CssClass="text-danger" ControlToValidate="txtOgrNo" runat="server" ValidationGroup="y"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtOgrNo" CssClass="text-danger" ErrorMessage="Sayısal Değer Giriniz" Operator="DataTypeCheck" Type="Integer" ValidationGroup="y"></asp:CompareValidator>
          <br />
          <label>E-Posta Adresi*</label>
          <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rq1" ErrorMessage="E-Posta Giriniz" CssClass="text-danger" ControlToValidate="txtMail" runat="server" ValidationGroup="y"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" CssClass="text-danger" ErrorMessage="Geçerli E-Posta Giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="y"></asp:RegularExpressionValidator>
          <br />
          <label>Telefon Numarası*</label>
          <asp:TextBox ID="txtTelNo" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Telefon Numarası Giriniz" CssClass="text-danger" ControlToValidate="txtTelNo" runat="server" ValidationGroup="y"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelNo" CssClass="text-danger" ErrorMessage="Sayısal Değer Giriniz" Operator="DataTypeCheck" Type="Integer" ValidationGroup="y"></asp:CompareValidator><br />
         <label>Ödev Aldığı Ders*</label>
         <asp:TextBox ID="txtDers" runat="server" CssClass="form-control"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Ders Adı Giriniz" CssClass="text-danger" ControlToValidate="txtDers" runat="server" ValidationGroup="y"></asp:RequiredFieldValidator><br />
          <asp:Button ID="btnKaydet" CssClass="btn btn-success" Text="Kaydet" 
                runat="server" ValidationGroup="y" onclick="btnKaydet_Click" />
           <br />
           <br />
           <asp:Label ID="lbSonuc" runat="server"></asp:Label>
          </div>
            </div>
        </div>
        </div>

</asp:Content>
