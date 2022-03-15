using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public tblAdmin CurrentMember
    {
        get
        {
            if (Session["tblUser"] == null)
            {
                return null;
            }
            else return ((tblAdmin)Session["tblUser"]);

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        #region social links
        string socialStr = string.Empty;
        tblCompanyCollection coDetailsTbl = new tblCompanyCollection();
        coDetailsTbl.ReadList();

        if (coDetailsTbl[0].Facebook.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].Facebook + "' class='facebook'><i class='fa fa-facebook'></i></a>";

        if (coDetailsTbl[0].Twitter.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].Twitter + "' class='twitter'><i class='fa fa-twitter'></i></a>";

        if (coDetailsTbl[0].Telegram.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].Telegram + "' class='google'><i class='fa fa-google'></i></a>";

        if (coDetailsTbl[0].Linkedin.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].Linkedin + "' class='linkedin'><i class='fa fa-linkedin'></i></a>";

        if (coDetailsTbl[0].youtube.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].youtube + "' class='youtube'><i class='fa fa-youtube'></i></a> ";

        if (coDetailsTbl[0].Instagram.Length > 0)
            socialStr += "<a href='" + coDetailsTbl[0].Instagram + "' class='instagram'><i class='fa fa-instagram'></i></a> ";

        socialsHtml.InnerHtml = socialStr;

        #endregion

    }
    protected void BtnSubmit_OnClick(object Source, EventArgs e)
    {
        if (CurrentMember != null)
            Response.Redirect("admin/default.aspx");

        tblAdmin memberList = tblAdmin.loginCheck(txtUsername.Text, txtPass.Text);
        if (memberList == null)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script language=\"javascript\">");
            sb.Append("document.getElementById(\"errMsgHtml\").className=\"error-msg-show\";");
            sb.Append("</script>");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "MyScript", sb.ToString());
        }
        else
        {
            Session["tblUser"] = memberList;
            if (Session["UrlReferrer"] == null)
            {
                Response.Redirect("admin/default.aspx");
            }
        }

    }
}
