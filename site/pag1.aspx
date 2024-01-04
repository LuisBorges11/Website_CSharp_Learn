<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pag1.aspx.cs" Inherits="site.pag1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            Nome: 
            
            <asp:TextBox ID="tb_nome" runat="server" Height="19px" Width="398px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_mostrar" runat="server" Text="Mostrar" OnClick="btn_mostrar_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
        
             <asp:Label ID="lbl_mensagem" runat="server" Text="lbl_mensagem"></asp:Label>
            <p>
                &nbsp;</p>
            <p>
                Data Nacimento:
                <asp:TextBox ID="tb_data" runat="server" TextMode="Date"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                Palavra-Passe:<asp:TextBox ID="tb_pw" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Observaçoes:<asp:TextBox ID="tb_obs" runat="server" Height="112px" TextMode="MultiLine" Width="365px"></asp:TextBox>
            </p>
    </form>
</body>
</html>
