<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli.Master" AutoEventWireup="true" CodeBehind="ogrenciListe.aspx.cs" Inherits="odevPortali.ogrenciListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script>
    $(function () {
        $(document).on("click", ".sil", function () {
            var satir = $(this).closest("tr");
            satir.remove();
            return false;
        });
    });
 </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container" style="margin:50px 0 0 270px;">
        <div class="row">
        <div class="col-md-10">
        <h3>Öğrenci Kayıt Listesi</h3>
          <table id="tbKayitlar" class="table table-bordered">
            <tr class="bg-info">
              <td>SN</td>
              <td>Adı Soyadı</td>
              <td>Öğrenci Numarası</td>
              <td>E-Posta Adresi</td>
              <td>Telefon Numarası</td>
              <td>Ödev Aldığı Ders</td>
              <td>Sil</td>
            </tr>
              <asp:Repeater ID="rptOgrenci" runat="server" OnItemCommand="rptOgrenci_ItemCommand">

              <ItemTemplate>
             <tr class="bg-info">
              <td><%#Container.ItemIndex+1  %></td>
              <td><%#Eval("adi_soyadi") %></td>
              <td><%#Eval("ogr_no") %></td>
              <td><%#Eval("mail") %></td>
              <td><%#Eval("tel") %></td>
              <td><%#Eval("ders") %></td>
              <td><asp:Button ID="btnSil" runat="server" Text="Sil" CssClass="btn btn-danger" CommandName="cmdSil" CommandArgument='<%#Eval("ogr_id") %>' /></td>
            </tr>
            </ItemTemplate>

              </asp:Repeater>
          </table>
        </div>
        </div>
    </div>

</asp:Content>
