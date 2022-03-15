using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




using SelectPdf;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class pr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = "", family = "";
        if (Request.QueryString["name"] != null && Request.QueryString["family"] != null)
        {
            name = Request.QueryString["name"];
            family = Request.QueryString["family"];
        }
        else
            Response.Redirect("defalut.aspx?result=false");

        #region print PDF

        string baseUrl = "https://demo.tdbm.ir/print.aspx";

        string pdf_page_size = "Letter"; //Letter - HalfLetter - Ledger - Legal - Note - Flsa
        PdfPageSize pageSize = (PdfPageSize)Enum.Parse(typeof(PdfPageSize),
            pdf_page_size, true);

        string pdf_orientation = "Landscape"; //Landscape / Portrait
        PdfPageOrientation pdfOrientation =
            (PdfPageOrientation)Enum.Parse(typeof(PdfPageOrientation),
            pdf_orientation, true);

        // instantiate a html to pdf converter object
        HtmlToPdf converter = new HtmlToPdf();

        converter.Options.PdfPageCustomSize = new SizeF(1700, 1790);

        //converter.Options.PdfPageSize = PdfPageSize.Letter; //ORRRRRRRRRRRRR pageSize;
        converter.Options.PdfPageOrientation = PdfPageOrientation.Landscape; //ORRRRRRRRRRRRRRRRRRR pdfOrientation;

        converter.Options.JavaScriptEnabled = true;

        converter.Options.WebPageWidth = 1800;
        converter.Options.WebPageHeight = 1227;

        converter.Options.WebPageFixedSize = false;

        converter.Options.AutoFitWidth = HtmlToPdfPageFitMode.AutoFit;
        converter.Options.AutoFitHeight = HtmlToPdfPageFitMode.AutoFit;

        converter.Options.MarginLeft = 20;
        converter.Options.MarginRight = 20;
        converter.Options.MarginTop = 20;
        converter.Options.MarginBottom = 20;


        // create a new pdf document converting an url
        //PdfDocument doc = converter.ConvertHtmlString(htmlString, baseUrl);
        PdfDocument doc = converter.ConvertUrl(baseUrl);

        // save pdf document
        string dateNow = DateTime.Now.ToString("MMMM dd, yyyy");
        //doc.Save(Response, false, "COVID-19 worker and employee screening result - "+ dateNow + ".pdf");
        String path = Server.MapPath("~/doc/");
        doc.Save(path + "/COVID-19 worker and employee screening result - " + dateNow + ".pdf");

        // close pdf document
        doc.Close();

        #endregion


        #region Sending Email

        string smtpText = "smtp.gmail.com";
        int portNumber = 587;
        string userName = "bondelectric.noreply@gmail.com";
        string password = "Admin@123456";
        path = Server.MapPath("doc\\");


        try
        {

            SmtpClient smtp = new SmtpClient(smtpText, portNumber);

            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(userName, password);
            MailMessage message = new MailMessage();
            message.To.Add("i8net2000@yahoo.com");


            //string toAddress = "";
            //foreach (var item in toAddress.Split(new[] { ";" }, StringSplitOptions.RemoveEmptyEntries))                //Read from a string with ; as delimiter and split them and put them i an array


            string fileName = path + "/COVID-19 worker and employee screening result - " + dateNow + ".pdf";

            message.Attachments.Add(new Attachment(fileName));



            message.From = new MailAddress(userName);
            message.Subject = name + " " + family + " " + DateTime.Now.ToString("MM/dd/yyyy");
            message.Body = "Hi there, This is my screen test result as an attachemnt. Sincerely;" + name + " " + family;

            smtp.Send(message);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent');", true);
            //Response.Redirect("contact.aspx.aspx");
            lblError.InnerText = "Email has been sent ";
        }
        catch (Exception ex)
        {

            lblError.InnerText = "Email has not been sent because " + ex.Message;
        }

        #endregion

        Response.Redirect("default.aspx?result=ok");
    }
}