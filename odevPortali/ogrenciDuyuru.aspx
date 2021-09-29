<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli.Master" AutoEventWireup="true" CodeBehind="ogrenciDuyuru.aspx.cs" Inherits="odevPortali.ogrenciDuyuru" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <div class="row">       
            <div class="col-md-10" style="margin:50px 0 0 200px;">
            <h3>Öğrenci Duyuru Paneli</h3>
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                
            </div>
        </div>
    </div>

</asp:Content>
