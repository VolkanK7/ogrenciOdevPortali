<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="odevPortali.giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Giriş Paneli</title>
    <link href="css/stylee.css" rel="stylesheet" type="text/css" />
    
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
  <link href='http://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>
  <form id="form1" runat="server" method="post" action="girisYap.aspx">
<div class="login" style="margin-top:150px;">
  <div class="login-header">
    <h2>Giriş Paneli</h2>
  </div>
  <div class="login-form">
    <h3>Kullanıcı Adı:</h3>
    <input type="text" name="ogrKadi" placeholder="Kullanıcı Adı"/><br>
    <h3>Parola:</h3>
    <input type="password" name="ogrParola" placeholder="Parola"/>
    <br />
    <br />
    <input type="submit" value="Giriş" class="btn btn-block" style="width:120px; margin-left:180px;" />
    <br />
                        <%
                        if (Request.QueryString["h"] != null) { 
                        if (Request.QueryString["h"].ToString() == "1") {
                         %>
                        <div class="alert alert-danger">Lütfen Kullanıcı Adı veya Parola Giriniz</div>
                      <%} %>
                       <%
                        if (Request.QueryString["h"].ToString() == "2") { 
                         %>
                        <div class="alert alert-danger">Girilen Kullanıcı Adı veya Parola Geçersiz</div>
                      <%}} %>
    <br />          
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

    <script src="js/index.js"></script>
    </form>
</body>
</html>
