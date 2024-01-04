<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_noticias.aspx.cs" Inherits="site.Lista_noticias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>Lista de Noticia</h1></center>
        <br />
        <asp:Xml ID="Xml1" runat="server" TransformSource="~/formatar_noticias.xslt"></asp:Xml>
    </form>
</body>
</html>
