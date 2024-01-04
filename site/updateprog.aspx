<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateprog.aspx.cs" Inherits="site.updateprog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        .body{
            margin: 0px;
        }

        .modal{
            position:fixed;
            width:100%;
            height:100%;
            background-color: black;
            opacity:0.7;
            top:0px;
        }

        .center{
            text-align: center;
            margin:250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>

                <div class="modal">
                    <div class="center">
                        <img src="Loader.gif" width="100" height="100" />
                    </div>
                </div>
                
            </ProgressTemplate>
        </asp:UpdateProgress>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
                     <br />
                        <asp:Label ID="lbl_mensagem" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btn_mostrar" runat="server" 
                            OnClick="btn_mostrar_Click" Text="Mostrar" />
                        <br />
                </ContentTemplate>
        </asp:UpdatePanel>
       
       
    </form>
    </body>
</html>
