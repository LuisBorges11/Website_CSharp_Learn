<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="envio_email.aspx.cs" Inherits="site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            De:
            <asp:TextBox ID="tb_de" runat="server"></asp:TextBox>
            <br />
            <br />
            Para:<asp:TextBox ID="tb_para" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            Assunto:<asp:TextBox ID="tb_assunto" runat="server" Height="102px" Width="253px"></asp:TextBox>
            <br />
            <br />
            Mensagem:<asp:TextBox ID="tb_mensagem" runat="server" Height="71px" Width="373px"></asp:TextBox>
            <br />
            <br />
            Anexo:<asp:FileUpload ID="FileUpload1" runat="server" Width="409px" />
            <br />
            <br />
            <asp:Button ID="bt_enviar" runat="server" OnClick="Button1_Click" Text="Enviar" Width="102px" />
            <br />
            <br />
        </div>
        <asp:Label ID="lbl_Mensagem" runat="server"></asp:Label>
    </form>
</body>
</html>
