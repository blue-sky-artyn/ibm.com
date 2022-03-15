<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" EnableEventValidation="True"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script src="https://kit.fontawesome.com/67273cf17e.js" crossorigin="anonymous"></script>--%>

    <style>
        .slider-bg {background-size: cover;}
        .fa-angle-left:before {color: whitesmoke;}
        .fa-angle-right:before {color: whitesmoke;}
        .fa-quote-left:before {color: #00346b;}
        .companies-details {width: 80%;margin: 25px auto;}
        .slider-para {
            max-height: 185px;
            overflow: hidden;
        }
        .news-details {
            text-align: justify;
            /*min-height: 265px;*/
            height: 265px;
            overflow: hidden;
            clear: both;
        }
        .readme-font {
            font-weight: bold;
        }
        .service-icon {
            font-size: 50px;
            color: #f0aa31;
            text-shadow: #b5b1b159 2px 2px 0px;
        }
        .context {
            height: 85px;
            overflow: hidden;
        }
        .widget-title {
            height: 75px;
            overflow: hidden;
        }
        .space{
            margin-top: 30px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="support" class="section wb">
        <div class="container">
            
          
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_form">
                        <div id="message"></div>
                        <div id="contactform" class="row">
                            <fieldset class="row-fluid">
                                <div class="form-check">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">17 years old or younger
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">18 years old or older
  </label>
</div>

                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="first_name" id="txtName" runat="server" class="form-control" placeholder="First Name">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="last_name" id="txtFname" runat="server" class="form-control" placeholder="Last Name">
                                </div>
                                
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                    <p id="lblErrorHtml" runat="server" style="color: red;"></p>
                                    <asp:Button ID="btnEmail" runat="server" class="btn btn-light btn-radius btn-brd grd1 btn-block" Text="SEND US" OnClick="btnEmail_Click" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <!-- end section -->

    <div class="map-main-box">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="map-btn"><i class="fa fa-map-pin" aria-hidden="true"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div class="map-box">
        <div id="custom-places" class="small-map">            
           














        </div>

    </div>
	</asp:Content>
