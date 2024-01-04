<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir_notas.aspx.cs" Inherits="site.gerir_notas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">

                <HeaderTemplate>
                        <table border="1" width="800">
                            <tr class="fundo_topo">
                                <td><b>cod</b></td>
                                <td><b>Formando</b></td>
                                <td><b>Modulo</b></td>
                                <td><b>Nota</b></td>
                                <td>
                                    <asp:ImageButton ID="img_saveAll" runat="server" ImageUrl="~/icons/confirm.png" OnClick="img_saveAll_Click"/>

                                </td>
                                
                            </tr>
                        
                    </HeaderTemplate>


                    <ItemTemplate>

                         <tr>
                                <td><asp:Label ID="lbl_cod" runat="server"></asp:Label></td>

                                <td><asp:TextBox ID="tb_formando" runat="server"></asp:TextBox></td>

                                <td><asp:TextBox ID="tb_modulo" runat="server"></asp:TextBox></td>

                                <td><asp:TextBox ID="tb_nota" runat="server"></asp:TextBox></td>

                                <td>

                                    <asp:ImageButton ID="btn_grava" runat="server" ImageUrl="~/icons/save.png" CommandName="btn_grava" />

                                </td>


                            </tr>
                    </ItemTemplate>

                    <AlternatingItemTemplate>
                        <tr>
                                <td><asp:Label ID="lbl_cod" runat="server"></asp:Label></td>

                                <td><asp:TextBox ID="tb_formando" runat="server"></asp:TextBox></td>

                                <td><asp:TextBox ID="tb_modulo" runat="server"></asp:TextBox></td>

                                <td><asp:TextBox ID="tb_nota" runat="server"></asp:TextBox></td>

                                <td>

                                        <asp:ImageButton ID="btn_grava" runat="server" ImageUrl="~/icons/save.png" CommandName="btn_grava" />

                                </td>
                            </tr>
                    </AlternatingItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:atec_cas-pachecoConnectionString %>" SelectCommand="SELECT * FROM [avaliacoes]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
