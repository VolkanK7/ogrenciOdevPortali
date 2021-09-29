<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="odevListe.aspx.cs" Inherits="odevPortali.odevListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <div class="row">
     <div class="col-md-4">
     <br />
        <h3>Öğrenci Ödev Listesi</h3>
          <table id="tbKayitlar" class="table table-bordered">
            <tr>
              <td>Ders Adı</td>
              <td>Ödev No</td>
              <td>Ödev Konu</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>1 (Numara Son Rakamı)</td>
              <td>Konu 1</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>2 (Numara Son Rakamı)</td>
              <td>Konu 2</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>3 (Numara Son Rakamı)</td>
              <td>Konu 3</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>4 (Numara Son Rakamı)</td>
              <td>Konu 4</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>5 (Numara Son Rakamı)</td>
              <td>Konu 5</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>6 (Numara Son Rakamı)</td>
              <td>Konu 6</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>7 (Numara Son Rakamı)</td>
              <td>Konu 7</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>8 (Numara Son Rakamı)</td>
              <td>Konu 8</td>
            </tr>
            <tr>
              <td>Ders 1</td>
              <td>9 (Numara Son Rakamı)</td>
              <td>Konu 9</td>
            </tr>
          </table>
        </div>

            <div class="alert alert-info">
            <label>Her öğrenci numarasının son rakamına göre ödev konularını alacaktır.<br />Örnek : 2015113201<b>3</b> = <b>3</b> numaralı ödevi yapacaktır.</label>
            </div>
            <div class="alert alert-info">
            <label>ÖDEV TESLİM TARİHİ : 03.12.2016</label>
            </div>
            <div class="alert alert-danger">
            <label>Ödevini yanlış konuyla yapan veya zamanında teslim etmeyen öğrenciler vize notu olarak <b>0</b> alacaktır.</label>
            </div>
            
        </div>
        </div>

</asp:Content>
