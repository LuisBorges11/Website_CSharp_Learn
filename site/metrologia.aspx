<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="metrologia.aspx.cs" Inherits="site.metrologia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="Xml1" runat="server" TransformSource="~/formata_metrologia.xslt"></asp:Xml>
        </div>
    </form>
</body>
</html>
