<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="YouListTube.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Css/Index.css" rel="stylesheet" />
    <title>"You&ltList&gtTube"</title>
</head>
<body>
    <div id="content">
        <h1>You&ltList&gtTube</h1>
        <form id="form1" runat="server">
            <div>
                <asp:TextBox ID="Txt_Input" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button_Group" runat="server" Text="Play" OnClick="Button_Group_Click" /><br />
                <div id="video_content" runat="server">
                    <% =GetVideo()%>.
                    <textarea id="txtA_ListVideo" runat="server" cols="40" rows="20"></textarea>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
