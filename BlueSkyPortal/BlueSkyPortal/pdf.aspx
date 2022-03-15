<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pdf.aspx.cs" Inherits="pdf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="PrintThis" runat="server">
                <h1>Print PDF test page</h1>
                <p>This is a sample page to test print out for PDF.</p>
            </div>
            <asp:Button ID="btnPrint" runat="server" Text="Generate PDF" OnClick="btnPrint_Click" />
        </div>
    </form>
</body>
</html>
