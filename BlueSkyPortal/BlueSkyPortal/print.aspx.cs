using iTextSharp.text;
//using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.xml;


using SelectPdf;

using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region set data

        string timeFromStr = DateTime.Now.ToString("hh:mm tt");
        fromTimeHTML.InnerText = timeFromStr;

        #endregion

      
    }
}