﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;

using System.Net;
using System.Net.Mail;


public partial class admin_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void btnEmail_Click(object sender, EventArgs e)
    {

        #region Sending Email

        string smtpText = "smtp.gmail.com";
        int portNumber = 587;
        string userName = "bondelectric.noreply@gmail.com";
        string password = "Admin@123456";
        string path = Server.MapPath("doc\\");


        try
        {

            SmtpClient smtp = new SmtpClient(smtpText, portNumber);

            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(userName, password);
            MailMessage message = new MailMessage();
            message.To.Add("info@bondelectric.ca");
            message.To.Add("i8net2000@yahoo.com");


            //string toAddress = "";
            //foreach (var item in toAddress.Split(new[] { ";" }, StringSplitOptions.RemoveEmptyEntries))                //Read from a string with ; as delimiter and split them and put them i an array



            message.From = new MailAddress(userName);
            message.Subject = "sbj tst";//first_name.Value + " " + last_name.Value + " (" + phone.Value + ")";
            message.Body = "testttttttttttt";//comments.Value;

            smtp.Send(message);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent');", true);
            //Response.Redirect("contact.aspx.aspx");
            lblErrorHtml.InnerText = "Email has been sent ";
        }
        catch (Exception ex)
        {

            lblErrorHtml.InnerText = "Email has not been sent because " + ex.Message;
        }

        #endregion

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}