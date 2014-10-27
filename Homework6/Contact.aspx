<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <h1>Lindsey's Recipe Website</h1>
    <h2>Using 5 Ingredients or Less!</h2>
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>

<body>
    <form id="form1" runat="server">

         <br />
        <span class="navBar">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HomeLink" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="NewRecipeLink" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="AboutUsLink" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="ContactLink" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
            </span>
        <br />

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
         <% If Not IsPostBack Then%>Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
         <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
         <%End If%>

    </form>
    <p class="footer">© 2014 Lindsey Zimanek</p>
</body>
</html>
