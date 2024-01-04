<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_noticias_bd.aspx.cs" Inherits="site.Lista_noticias_bd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <marquee></marquee>
            Lista de noticias oriundas de uma Base de Dados<br />
            <br />
            <asp:Xml ID="Xml1" runat="server" TransformSource="~/lista_noticias_bd.xslt"></asp:Xml>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_armazem" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_armazem" HeaderText="id_armazem" ReadOnly="True" SortExpression="id_armazem" />
                    <asp:BoundField DataField="nome_armazem" HeaderText="nome_armazem" SortExpression="nome_armazem" />
                    <asp:BoundField DataField="localizacao_armazem" HeaderText="localizacao_armazem" SortExpression="localizacao_armazem" />
                    <asp:BoundField DataField="capacidade_maxima_armazem" HeaderText="capacidade_maxima_armazem" SortExpression="capacidade_maxima_armazem" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Armazens]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
