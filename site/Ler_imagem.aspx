<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ler_imagem.aspx.cs" Inherits="site.Ler_imagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome da Imagem :<asp:DropDownList ID="ddl_nome" runat="server" DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id" OnSelectedIndexChanged="ddl_nome_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="bt_fachada" runat="server" OnClick="bt_fachada_Click" Text="Download" Width="107px" style="height: 26px" />
        </div>
    </form>
</body>
</html>
