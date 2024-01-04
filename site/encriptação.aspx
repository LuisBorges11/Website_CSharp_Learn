<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="encriptação.aspx.cs" Inherits="site.encriptação" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        body{
            background-color: black;
            color: white;
        }

        .minhaDiv
        {
            width: 300px;
            height: 200px;
            background-color: aqua;
            color: black;
            font-size: 10px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Original:
            <asp:TextBox ID="tb_original" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_ecriptar" runat="server" OnClick="btn_ecriptar_Click" Text="Ecriptar" />
            <br />
            <br />
            <br />
            <asp:Label ID="lb_encriptar" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_Desencriptar" runat="server" OnClick="btn_Desencriptar_Click" Text="Desencriptar" />
            <br />
            <br />
            <br />
            <asp:Label ID="lb_Desencriptar" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="minhaDiv">Exemplo de CSS</div>
    </form>
</body>
</html>
