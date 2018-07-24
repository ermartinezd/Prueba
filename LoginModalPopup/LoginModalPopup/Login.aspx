<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />    
    <script type="text/javascript">
       

 
        
        


</script>
</head>
<body >
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    &nbsp;
    <br />
    <table >
        <tr>
            <td >
                <asp:LinkButton ID="lnkLoginbtn" runat="server" style="display: none;"></asp:LinkButton></td>
             
            <td>
                   <asp:LinkButton ID="LinkButton1" runat="server" >Login</asp:LinkButton>
             </td> 
        </tr>
        <tr>
            <td colspan="2">
   <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    <br />
<div>
             
   <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtenderLogin" runat="server" 
             TargetControlID="lnkLoginbtn"
             PopupControlID="Panel1"
             BackgroundCssClass="modalBackground"
             DropShadow="true"
             OkControlID="btnLogin"
             CancelControlID="btnCancel" />
   
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none"  >
       
            <table style="width: 270px">
                <tr>
                    <td align="right">
                        <asp:Label ID="lblUsername" runat="server" Height="30px" Text="UserName :"></asp:Label>
                    </td>
                    <td style="width: 179px" >
    <asp:TextBox ID="txtUsername" runat="server" Width="100px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 30% " align="right">
                        <asp:Label ID="lblPassword" runat="server" Height="30px" Text="Password :"></asp:Label>
                    </td>
                    <td style="width: 179px">
                        <asp:TextBox ID="txtPassword" runat="server" Width="100px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td >
                    </td>
                    <td>
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel"  />
                        <asp:Button ID="btnLogin" runat="server" Text="LogIn" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
       
    </asp:Panel>
    <br />

   </div>
</form>
</body>
</html>