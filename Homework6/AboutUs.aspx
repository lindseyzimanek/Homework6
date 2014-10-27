<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <h1>Lindsey's Recipe Website</h1>
    <h2>Using 5 Ingredients or Less!</h2>
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
        <p>
            Hsf ijsf ksdjfsd jdfsdf. Jfjda asjdf jsdfh jasdf ajs ks. Jjkans jksd ir ia ioa oaa arjwea. Ljka ajkfa ahf.
            Nda isdaf jksdff dsja. Yjksa sakj a jsf jaf afj. Iadjf asdjfa sajkdfa df df df.
        </p>
    </div>
    </form>
    <p class="footer">© 2014 Lindsey Zimanek</p>
</body>
</html>
