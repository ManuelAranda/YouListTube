<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="YouListTube.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label_Group" runat="server" Text="Grupo o Artista"></asp:Label><br />
        <asp:TextBox ID="TextBox_Group" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button_Group" runat="server" Text="Crear" OnClick="Button_Group_Click" /><br />
        <textarea id="txtA_ListVideo" runat="server" cols="40" rows="20"></textarea>
    </div>
    </form>
</body>
</html>
