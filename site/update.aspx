<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="site.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h1><asp:Label ID="lbl_horas" runat="server"></asp:Label></h1>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>
                    <asp:Button ID="btn_atualizar" runat="server" OnClick="btn_atualizar_Click" Text="Atualizar" Width="93px" />
                </p>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
</body>
</html>
