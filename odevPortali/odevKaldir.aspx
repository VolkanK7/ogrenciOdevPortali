<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="odevKaldir.aspx.cs" Inherits="odevPortali.odevKaldir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">

<div class="row"> 

            <div class="col-md-12" style="margin-top:65px;">

            <h3>Ödev Detayları</h3>
            <table class="table table-bordered" >
        <tr>
          <td>Ders Adı</td>
          <td>
            <span>Ders 1</span></td>
        </tr>
         <tr>
          <td>Ödev Konusu</td>
          <td>
            <span >Ödev Konu 1</span></td>
        </tr>
        <tr>
          <td>Ödev Alış Tarihi</td>
          <td>
            <span>11/2/2016</span></td>
        </tr>
        <tr>
          <td>Ödev Son Teslim Tarihi</td>
          <td>
            <span>03.12.2016 23.59</span></td>
        </tr>
        <tr>
          <td>Ödev Durumu</td>
          <td>
            <span><b>Yüklendi !</b></span></td>
        </tr> 
        <tr>
          <td>Dosya Adı</td>
          <td>
            <span><b>odevim.zip</b></span></td>
        </tr> 
         <tr>
          <td>ÖDEV KALDIR</td>
          <td>
            <span><button class="btn btn-danger" id="Button1">ÖDEVİ KALDIR</button></span></td>
        </tr>                            
        </table>
        <div class="alert alert-danger">
                <label>Ödevlerinizi kaldırdıktan sonra <b>son teslim tarihine kadar</b> <a href="odevYukle.aspx">ÖDEV YÜKLE</a> sayfasına tekrar yükleyiniz.</label>
        </div>
        </div>
</div>
</div>

</asp:Content>
