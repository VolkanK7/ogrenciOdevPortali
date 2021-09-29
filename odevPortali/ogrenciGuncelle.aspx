<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli.Master" AutoEventWireup="true" CodeBehind="ogrenciGuncelle.aspx.cs" Inherits="odevPortali.ogrenciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container" style=" margin-top:50px;">
        <div class="row">
        <div class="col-md-10" style="margin-left:210px;">
        <h3>Öğrenci Kayıt Listesi</h3>
          <table id="tbKayitlar" class="table table-bordered">
            <tr class="bg-info">
              <td>SN</td>
              <td>Adı Soyadı</td>
              <td>Öğrenci Numarası</td>
              <td>E-Posta Adresi</td>
              <td>Telefon Numarası</td>
              <td>Ödev Aldığı Ders</td>
            </tr>
              <asp:Repeater ID="rptOgrenci" runat="server">

              <ItemTemplate>
             <tr class="bg-info">
              <td><%#Container.ItemIndex+1  %></td>
              <td><%#Eval("adi_soyadi") %></td>
              <td><%#Eval("ogr_no") %></td>
              <td><%#Eval("mail") %></td>
              <td><%#Eval("tel") %></td>
              <td><%#Eval("ders") %></td>
            </tr>
            </ItemTemplate>

              </asp:Repeater>
          </table>
          </div>



        <div class="col-md-4 alert alert-info" style="margin-left:270px;">
        <div id="AramaForm">
        <br />
          <h3>Öğrenci Ara</h3>
          <label>Öğrenci Numarası*</label>
          <asp:TextBox ID="txtOgrNo" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Numara Giriniz" CssClass="text-danger" ControlToValidate="txtOgrNo" runat="server" ValidationGroup="n"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtOgrNo" CssClass="text-danger" ErrorMessage="Sayısal Değer Giriniz" Operator="DataTypeCheck" Type="Integer" ValidationGroup="n"></asp:CompareValidator>
          <br />
          <asp:Button ID="btnAra" CssClass="btn btn-success" Text="Ara" 
                runat="server" ValidationGroup="n" onclick="btnAra_Click" />
            <br /><br />
          <asp:Label ID="lbSonuc" runat="server"></asp:Label>
          </div>
            </div>


        <div class="col-md-4 alert alert-info" style="margin-left:50px;">
        <div id="KayitForm">
        <br /><br />
          <h3>Öğrenci Güncelleme Formu</h3>
          <label>Adı Soyadı*</label>
          <input type="text" class="form-control" id="txtAdSoyad"/><br />
          <label>Öğrenci Numarası*</label>
          <input type="number" class="form-control" id="txtOgrenciNumarasi" /><br/>
          <label>E-Posta Adresi*</label>
          <input type="text" class="form-control" id="txtMail" /><br />
          <label>Telefon Numarası*</label>
          <input type="number" class="form-control" id="txtTelefonNumarasi" /><br/>
          <label>Ödev Aldığı Ders*</label>
         <input type="text" class="form-control" id="txtDers" /><br /> 
          <button class="btn btn-success" id="btnGuncelle">Güncelle</button><br /><br />
          <div id="sonuc"></div>
          </div>
            </div>       
        </div>
    </div>

</asp:Content>
