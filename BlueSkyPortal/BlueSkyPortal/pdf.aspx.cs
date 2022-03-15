
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SelectPdf;

public partial class pdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        #region solution 1
        //////////////System.Diagnostics.Process p = new System.Diagnostics.Process();
        //////////////p.StartInfo.FileName = "AcroRd32.exe";
        //////////////p.Start();
        //////////////p.WaitForInputIdle();
        #endregion


        #region solution 2

        //using iTextSharp.text;
        //using iTextSharp.text.pdf;
        //using iTextSharp.text.html.simpleparser;

        //Response.ContentType = "application/pdf";
        //Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //StringWriter stringWriter = new StringWriter();
        //HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
        //PrintThis.RenderControl(htmlTextWriter);
        //StringReader stringReader = new StringReader(stringWriter.ToString());
        ////Document Doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        //Document Doc = new Document(PageSize.A4, 10f, 10f, 40f, 0f);
        //HTMLWorker htmlparser = new HTMLWorker(Doc);
        //PdfWriter.GetInstance(Doc, Response.OutputStream);
        //Doc.Open();
        //htmlparser.Parse(stringReader);
        //Doc.Close();
        //Response.Write(Doc);
        //Response.End();

        #endregion


        #region solution 3
        //using SelectPdf;

        //HtmlToPdf converter = new HtmlToPdf();

        //// create a new pdf document converting an url
        //String path = "https://demo.tdbm.ir/print.aspx";
        ////Server.MapPath("~/print.aspx")
        //PdfDocument doc = converter.ConvertUrl(path);





        //// save pdf document
        //doc.Save(Response, false, "test2.pdf");  // false: will not save the document

        //// close pdf document
        //doc.Close();
        #endregion


        #region solution 4
        // read parameters from the webpage
        string htmlString = "https://demo.tdbm.ir/print.aspx";
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

        // set converter options
        converter.Options.PdfPageSize = PdfPageSize.Letter; //ORRRRRRRRRRRRR pageSize;
        converter.Options.PdfPageOrientation = PdfPageOrientation.Landscape; //ORRRRRRRRRRRRRRRRRRR pdfOrientation;
        
        converter.Options.WebPageWidth = 1690;
        converter.Options.WebPageHeight = 1227;

        converter.Options.WebPageFixedSize = false;

        converter.Options.AutoFitWidth = HtmlToPdfPageFitMode.ShrinkOnly;
        converter.Options.AutoFitHeight = HtmlToPdfPageFitMode.NoAdjustment;

        converter.Options.MarginLeft = 20;
        converter.Options.MarginRight = 20;
        converter.Options.MarginTop = 20;
        converter.Options.MarginBottom = 20;


        // create a new pdf document converting an url
        //PdfDocument doc = converter.ConvertHtmlString(htmlString, baseUrl);
        PdfDocument doc = converter.ConvertUrl(baseUrl);

        // save pdf document
        doc.Save(Response, false, "Sample11.pdf");

        // close pdf document
        doc.Close();
        #endregion

        #region solution 4 (II)


        //// instantiate a html to pdf converter object
        //HtmlToPdf converter = new HtmlToPdf();

        //// create a new pdf document converting an url
        //PdfDocument doc = converter.ConvertUrl(TxtUrl.Text);

        //// get conversion result (contains document info from the web page)
        //HtmlToPdfResult result = converter.ConversionResult;

        //// set the document properties
        //doc.DocumentInformation.Title = result.WebPageInformation.Title;
        //doc.DocumentInformation.Subject = result.WebPageInformation.Description;
        //doc.DocumentInformation.Keywords = result.WebPageInformation.Keywords;

        //doc.DocumentInformation.Author = "Select.Pdf Samples";
        //doc.DocumentInformation.CreationDate = DateTime.Now;

        //// save pdf document
        //doc.Save(Response, false, "Sample.pdf");

        //// close pdf document
        //doc.Close();
        #endregion

        #region solution 4 (III) Final

        //string baseUrl = "https://demo.tdbm.ir/print.aspx";

        //string pdf_page_size = "Letter"; //Letter - HalfLetter - Ledger - Legal - Note - Flsa
        //PdfPageSize pageSize = (PdfPageSize)Enum.Parse(typeof(PdfPageSize),
        //    pdf_page_size, true);

        //string pdf_orientation = "Landscape"; //Landscape / Portrait
        //PdfPageOrientation pdfOrientation =
        //    (PdfPageOrientation)Enum.Parse(typeof(PdfPageOrientation),
        //    pdf_orientation, true);


        //// instantiate a html to pdf converter object
        //HtmlToPdf converter = new HtmlToPdf();


        ////https://www.c-sharpcorner.com/reviews/72/html-to-pdf-converter-for-net   (check this)

        //// set converter options
        ////pdfConverter.PdfHeaderOptions.HeaderBackColor = Color.WhiteSmoke;
        ////pdfConverter.PdfHeaderOptions.HeaderHeight = 50;
        ////pdfConverter.PdfHeaderOptions.HeaderText = "Title";
        ////pdfConverter.PdfHeaderOptions.HeaderTextColor = Color.Black;
        ////pdfConverter.PdfHeaderOptions.HeaderTextFontType = PdfFontType.Helvetica;
        ////pdfConverter.PdfHeaderOptions.HeaderTextFontSize = 18;
        ////pdfConverter.PdfHeaderOptions.HeaderTextYLocation = 5;
        ////pdfConverter.PdfHeaderOptions.HeaderSubtitleText = "Subtitle";
        ////pdfConverter.PdfHeaderOptions.HeaderSubtitleTextColor = Color.Black;
        ////pdfConverter.PdfHeaderOptions.HeaderSubtitleTextFontType = PdfFontType.Helvetica;
        ////pdfConverter.PdfHeaderOptions.HeaderSubtitleTextFontSize = 12;
        ////pdfConverter.PdfHeaderOptions.HeaderTitleSubtitleYSpacing = 7;
        ////pdfConverter.PdfHeaderOptions.HeaderImageLocation = new PointF(0, 0);
        ////pdfConverter.PdfHeaderOptions.HeaderImage = Image.FromFile(logoImageFullPath);
        ////pdfConverter.PdfHeaderOptions.DrawHeaderLine = true;



        ////pdfConverter.PdfFooterOptions.FooterText = "Footer text";
        ////pdfConverter.PdfFooterOptions.FooterBackColor = Color.WhiteSmoke;
        ////pdfConverter.PdfFooterOptions.FooterHeight = 40;
        ////pdfConverter.PdfFooterOptions.FooterTextColor = Color.Black;
        ////pdfConverter.PdfFooterOptions.FooterTextFontType = PdfFontType.HelveticaOblique;
        ////pdfConverter.PdfFooterOptions.FooterTextFontSize = 8;
        ////pdfConverter.PdfFooterOptions.DrawFooterLine = true;
        ////pdfConverter.PdfFooterOptions.PageNumberText = "Page";
        ////pdfConverter.PdfFooterOptions.PageNumberTextColor = Color.Black;
        ////pdfConverter.PdfFooterOptions.PageNumberTextFontType = PdfFontType.HelveticaBold;
        ////pdfConverter.PdfFooterOptions.PageNumberTextFontSize = 10;
        ////pdfConverter.PdfFooterOptions.ShowPageNumber = true;


        //converter.Options.PdfPageCustomSize = new SizeF(1700, 1790);

        ////converter.Options.PdfPageSize = PdfPageSize.Letter; //ORRRRRRRRRRRRR pageSize;
        //converter.Options.PdfPageOrientation = PdfPageOrientation.Landscape; //ORRRRRRRRRRRRRRRRRRR pdfOrientation;

        //converter.Options.JavaScriptEnabled = true;

        //converter.Options.WebPageWidth = 1800;
        //converter.Options.WebPageHeight = 1227;

        //converter.Options.WebPageFixedSize = false;

        //converter.Options.AutoFitWidth = HtmlToPdfPageFitMode.AutoFit;
        //converter.Options.AutoFitHeight = HtmlToPdfPageFitMode.AutoFit;

        //converter.Options.MarginLeft = 20;
        //converter.Options.MarginRight = 20;
        //converter.Options.MarginTop = 20;
        //converter.Options.MarginBottom = 20;


        //// create a new pdf document converting an url
        ////PdfDocument doc = converter.ConvertHtmlString(htmlString, baseUrl);
        //PdfDocument doc = converter.ConvertUrl(baseUrl);

        //// save pdf document
        ////doc.Save(Response, false, "Sample11.pdf");

        //// close pdf document
        //doc.Close();
        #endregion
    }
}