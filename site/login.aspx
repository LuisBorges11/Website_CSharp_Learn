<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="site.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Utilizador:<asp:TextBox ID="tb_utilizador" runat="server" Width="242px"></asp:TextBox>
            <br />
            <br />
            Palavra-Passe:<asp:TextBox ID="tb_palavrapasse" runat="server" Width="211px"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="btn_entrar" runat="server" OnClick="btn_entrar_Click" Text="Entrar" />
        <br />
        <br />
        <asp:Label ID="lbl_menagem" runat="server" ForeColor="Red" Text="Utilizador ou palavra-passe errados!" Visible="False"></asp:Label>
    </form>
</body>
</html>
