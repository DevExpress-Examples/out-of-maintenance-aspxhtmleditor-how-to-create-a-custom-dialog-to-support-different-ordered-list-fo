using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class S35859 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            HtmlEditor1.Html = System.IO.File.ReadAllText(MapPath("~/TestHtml.html"));
        }
    }
}