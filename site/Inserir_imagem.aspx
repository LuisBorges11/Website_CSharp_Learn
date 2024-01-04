<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inserir_imagem.aspx.cs" Inherits="site.Inserir_imagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome Imagem:
            <asp:TextBox ID="tb_nome" runat="server"></asp:TextBox>
            <br />
            <br />
            Escolher Imagem:
            <asp:FileUpload ID="FileUpload1" runat="server" Width="449px" />
            <br />
            <br />
            <asp:Button ID="btn_buscar" runat="server" OnClick="btn_buscar_Click" Text="Buscar" style="height: 26px" />
        </div>
    </form>
</body>
</html>
