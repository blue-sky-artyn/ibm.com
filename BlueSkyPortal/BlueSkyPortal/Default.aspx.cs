using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;

using bluesky.artyn;
using System.Xml.Linq;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.IO;

using SelectPdf;
using System.Drawing;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string result = "";
        if (Request.QueryString["result"] != null)
        {
            result = Request.QueryString["result"];
        }

        if (result == "ok")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent sucssesfully');", true);
        }
        else if (result == "false")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('There was an error for sending email');", true);
        }

    }

    protected void btnEmail_Click(object sender, EventArgs e)
    {
        #region print PDF

        Response.Redirect("pr.aspx?name=" + txtName.Value + "&family=" + txtFname.Value);

        #endregion
    }
}