(function() {
    var currentMenu = null;

    function onHtmlEditorInit(s, e) {
        s.SelectionChanged.AddHandler(function() {
            var selectedElement = s.GetSelection().GetSelectedElement();
            currentMenu = ASPxClientUtils.GetParentByTagName(selectedElement, "OL");
        });
        s.CustomDialogClosing.AddHandler(function(sender, args) {
            if(args.status == "ok")
                setMenuProperties(currentMenu, s);
        });
        s.CustomCommand.AddHandler(function(sender, args) {
            if(args.commandName == "tryShowListProperties") {
                if(!currentMenu)
                    s.ExecuteCommand(ASPxClientCommandConsts.INSERTORDEREDLIST_COMMAND);
                setTimeout(function() {
                    if(currentMenu)
                        s.ExecuteCommand(ASPxClientCommandConsts.CUSTOMDIALOG_COMMAND, "ListProperties");    
                    else
                        alert("selection does not contain an ordered list");
                }, 100);
            }
        });
    }
    function onDialogFormInitialized(s, e) {
        listProperty_compact.SetChecked(parseInt(currentMenu.style.lineHeight) < 100);
        listProperty_start.SetValue(currentMenu.start || 1);
        listProperty_type.SetValue(currentMenu.type || "1");
        listProperty_compact.CheckedChanged.AddHandler(updatePreview);
        listProperty_start.ValueChanged.AddHandler(updatePreview);
        listProperty_type.ValueChanged.AddHandler(updatePreview);
        updatePreview();
    }
    function updatePreview() {
        var menuSample = document.createElement("OL");
        setMenuProperties(menuSample);
        menuSample.innerHTML = "<li>Item 1</li><li>Item 2</li><li>Item 3</li><li>Item 4</li>";
        listProperty_preview.SetContentHtml(menuSample.outerHTML);    
    }
    function setMenuProperties(menu, htmlEditor) {
        menu.style.lineHeight = listProperty_compact.GetChecked() ? "80%" : "";
        menu.start = listProperty_start.GetValue();
        menu.type = listProperty_type.GetValue();
        if(htmlEditor)
            htmlEditor.SaveToUndoHistory();
    }

    window.onDialogFormInitialized = onDialogFormInitialized;
    window.onHtmlEditorInit = onHtmlEditorInit;
})()