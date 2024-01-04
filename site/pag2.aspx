<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pag2.aspx.cs" Inherits="site.pag2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hobbies:<asp:CheckBoxList ID="cbl_hobbies" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cbl_hobbies_SelectedIndexChanged">
                <asp:ListItem>Leitura</asp:ListItem>
                <asp:ListItem>Jogos Online</asp:ListItem>
                <asp:ListItem>Jogging</asp:ListItem>
                <asp:ListItem>Pesca</asp:ListItem>
                <asp:ListItem>Viajar</asp:ListItem>
            </asp:CheckBoxList>
            
            <br />
            <br />
            <br />
            Regime:<asp:RadioButtonList ID="rbl_regime" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_regime_SelectedIndexChanged">
                <asp:ListItem>Diurno</asp:ListItem>
                <asp:ListItem>Noturno</asp:ListItem>
                <asp:ListItem>Outro</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                Qual?<asp:TextBox ID="tb_qual" runat="server" Width="197px"></asp:TextBox>
            </asp:Panel>
            <br />
            Qual?<asp:TextBox ID="tb_qual2" runat="server" Enabled="False" Visible="False" Width="193px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            Distrito:<asp:DropDownList ID="ddl_distrito" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_distrito_SelectedIndexChanged">
                <asp:ListItem>-----</asp:ListItem>
                <asp:ListItem>Lisboa</asp:ListItem>
                <asp:ListItem>Porto</asp:ListItem>
                <asp:ListItem>Setubal</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Concelho:<asp:DropDownList ID="ddl_concelho" runat="server">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
