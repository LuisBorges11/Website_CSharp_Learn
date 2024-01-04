<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="origem3.aspx.cs" Inherits="site.origem3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="tb_nome" runat="server"></asp:TextBox>
            <br />
            <br />
            Morada:<asp:TextBox ID="tb_morada" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_enviar" runat="server" OnClick="btn_enviar_Click" Text="Enviar" />
        </div>
    </form>
</body>
</html>
