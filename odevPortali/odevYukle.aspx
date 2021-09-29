<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="odevYukle.aspx.cs" Inherits="odevPortali.odevYukle" %>
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
        </table>
               <center> <div class="alert alert-success">
                <form action="upload.php" enctype="multipart/form-data" method="POST">Lütfen Bir Dosya Seçiniz: <input type="file" name="uploaded" />
            <input type="submit" value="Yükle" /></form>
                </div></center>
                <div class="alert alert-info">
                <label>Ödevlerinizi kaynak dosyalarıyla beraber <b>"Zip"</b> içine alarak atınız.<br />Raporlarınızı <b>"PDF"</b> formatına çevirdikten sonra atınız.</label>
                </div>
                <div class="alert alert-danger">
                <label>Ödevi son teslim tarihinden sonra atanların ödevleri dikkate alınmayacaktır!</label>
                </div>           
            </div>
        </div>
    </div>

</asp:Content>
