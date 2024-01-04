<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pauta.aspx.cs" Inherits="site.pauta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>

        .fundo_topo{
            background: black;
            color: white;
            font-size: 20px;
        }

        .positiva{
            background-color: green;

        }

        .negativa{
            background-color: red
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>Pauta</h1></center>
            <br />
                <asp:Repeater ID="rpt_notas" runat="server" OnItemCommand="rpt_notas_ItemCommand">
                    <HeaderTemplate>
                        <table border="1" width="800">
                            <tr class="fundo_topo">
                                <td><b>Formando</b></td>
                                <td><b>Modulo</b></td>
                                <td><b>Nota</b></td>
                            </tr>
                        
                    </HeaderTemplate>


                    <ItemTemplate>

                         <tr>
                                <td><%# Eval("formando")%></td>
                                <td><%# Eval("modulo")%></td>
                                <td class="<%#Eval("estiloCSS") %>"><%# Eval("nota")%></td>
                            </tr>
                    </ItemTemplate>


                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
    </form>
</body>
</html>
