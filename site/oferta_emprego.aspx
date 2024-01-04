<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oferta_emprego.aspx.cs" Inherits="site.oferta_emprego" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            De:<asp:TextBox ID="tb_de" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="tb_de" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Para:<asp:TextBox ID="tb_para" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="tb_para" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Assunto:<asp:TextBox ID="tb_assunto" runat="server" Height="16px" Width="391px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator9" runat="server" ControlToValidate="tb_assunto" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Nome:<asp:TextBox ID="tb_nome" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_nome" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Morada:<asp:TextBox ID="tb_morada" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="tb_morada" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Data Nascimento:<asp:TextBox ID="tb_data" runat="server" TextMode="Date"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="tb_data" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:<asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Candidata-se para o emprego: <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="158px">
                <asp:ListItem>Mecanico</asp:ListItem>
                <asp:ListItem>hardware t.i</asp:ListItem>
                <asp:ListItem>Reposição</asp:ListItem>
                <asp:ListItem>Cybersegurança</asp:ListItem>
                <asp:ListItem>Apoio tecnico</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <br />
            Anexo:<asp:FileUpload ID="FileUpload1" runat="server" Width="346px" />
            <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Mensagem:<asp:TextBox ID="tb_mensagem" runat="server" Height="71px" Width="373px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_enviar" runat="server" OnClick="btn_enviar_Click" Text="Enviar" Width="107px" />
            <br />
            <br />
            <asp:Label ID="lbl_Mensagem" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl_erro" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
