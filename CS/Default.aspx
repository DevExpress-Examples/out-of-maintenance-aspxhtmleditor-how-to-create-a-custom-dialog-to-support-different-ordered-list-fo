<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="S35859" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="CustomScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxHtmlEditor runat="server" ID="HtmlEditor1">
            <ClientSideEvents Init="onHtmlEditorInit" />
            <CustomDialogs>
                <dx:HtmlEditorCustomDialog Caption="ListProperties" Name="ListProperties" FormPath="CustomDialogForm.ascx" />
            </CustomDialogs>
            <Toolbars>
                <dx:HtmlEditorToolbar>
                    <Items>
                        <dx:ToolbarUndoButton></dx:ToolbarUndoButton>
                        <dx:ToolbarRedoButton></dx:ToolbarRedoButton>
                        <dx:CustomToolbarButton BeginGroup="true" CommandName="tryShowListProperties">
                             <Image IconID="format_listbullets_16x16" AlternateText="List Properties"></Image>
                        </dx:CustomToolbarButton>
                    </Items>
                </dx:HtmlEditorToolbar>
            </Toolbars>
        </dx:ASPxHtmlEditor>
    </form>
</body>
</html>
