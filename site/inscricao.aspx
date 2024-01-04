<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscricao.aspx.cs" Inherits="site.inscricao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="tb_nome" runat="server" Width="335px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_nome" ErrorMessage="Nome obrigatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Morada:<asp:TextBox ID="tb_morada" runat="server" Height="138px" TextMode="MultiLine" Width="342px"></asp:TextBox>
            <br />
            <br />
            Data de Nascimento:<asp:TextBox ID="tb_data" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            Email:<asp:TextBox ID="tb_email" runat="server" Width="246px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="Email obrigatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" ErrorMessage="Email invalido" ForeColor="#009933" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            NIF:<asp:TextBox ID="tb_nif" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_nif" ErrorMessage="NIF obrigatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <p>
            <asp:Button ID="btn_enviar" runat="server" Text="Enviar" OnClick="btn_enviar_Click" />
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
