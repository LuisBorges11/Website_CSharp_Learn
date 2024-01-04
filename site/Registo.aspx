<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registo.aspx.cs" Inherits="site.Registo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="tb_nome" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NºSocio:
            <asp:TextBox ID="tb_socio" runat="server" MaxLength="8"></asp:TextBox>
            <br />
            <br />
            Dia:<asp:TextBox ID="tb_dia" runat="server" MaxLength="2" OnTextChanged="tb_dia_TextChanged" Width="37px"></asp:TextBox>
&nbsp;Mês:
            <asp:TextBox ID="tb_mes" runat="server" MaxLength="2" Width="48px"></asp:TextBox>
&nbsp;Ano:<asp:TextBox ID="tb_ano" runat="server" MaxLength="4" Width="84px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="btn_gerar" runat="server" OnClick="btn_gerar_Click" Text="Gerar PDF" />
        </div>
    </form>
</body>
</html>
