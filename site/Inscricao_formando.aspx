<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscricao_formando.aspx.cs"
    Inherits="site.Inscricao_formando" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:
            <asp:TextBox ID="tb_nome" runat="server" Width="407px"></asp:TextBox>
            <br />
            <br />
            Email:<asp:TextBox ID="tb_email" runat="server" Width="418px"></asp:TextBox>
            <br />
            <br />
            Foto:<asp:FileUpload ID="FileUpload1" runat="server" Width="427px" />
            <br />
            <br />
            CV:

            <script src="ckeditorhtml/ckeditor.js"></script>
            <asp:TextBox ID="tb_cv" runat="server" Height="67px" TextMode="MultiLine" 
                Width="414px"></asp:TextBox>
            
            <script>
                CKEDITOR.replace('<%= tb_cv.ClientID%>',
                    {
                        customConfig: 'custom/editor_config.js'
                    })
            </script>
            <br />
            <br />
            <asp:Button ID="btn_registo" runat="server" Text="Registo" Width="138px" OnClick="btn_registo_Click" />
        </div>

        
    </form>
</body>
</html>
