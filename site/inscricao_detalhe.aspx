<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscricao_detalhe.aspx.cs" Inherits="site.inscricao_detalhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Escolher formando atravez do nº :
            <asp:DropDownList ID="ddl_formando" runat="server" DataSourceID="SqlDataSource1" DataTextField="numero" DataValueField="numero">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="bt_mostrar" runat="server" OnClick="bt_mostrar_Click" Text="Mostrar" />
            <br />
            <br />
            <asp:Label ID="lbl_nome" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl_email" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Image ID="img_foto" runat="server" />
            <br />
            <br />
            <br />
            <asp:Literal ID="lt_cv" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
