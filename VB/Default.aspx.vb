Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class S35859
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then

            HtmlEditor1.Html = System.IO.File.ReadAllText(MapPath("~/TestHtml.html"))
        End If
    End Sub
End Class