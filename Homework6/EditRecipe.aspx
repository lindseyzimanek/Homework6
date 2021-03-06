﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditRecipe.aspx.vb" Inherits="RecipeDetailsaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Recipe</title>
    <h1>Lindsey's Recipe Website</h1>
    <h2>Using 5 Ingredients or Less!</h2>
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw6_recipes %>" DeleteCommand="DELETE FROM [lzimanek_hw6_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [lzimanek_hw6_recipes] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [lzimanek_hw6_recipes] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [lzimanek_hw6_recipes] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
        <asp:FormView ID="FormView1" runat="server" CssClass="cssformview" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="266px" HorizontalAlign="Center">
            <EditItemTemplate>
                 <table>
                   <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_RecipeName" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                       <td style="text-align:left;">
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the name of the recipe." CssClass="validationError" ControlToValidate="tb_RecipeName"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_SubmittedBy" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your name." CssClass="validationError"></asp:RequiredFieldValidator>
                         </td>                            
                    </tr>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Ingredient 1: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Ingred1" runat="server" Text='<%# Bind("ingredient1") %>' />
                         </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter at least 1 ingredient." CssClass="validationError" ControlToValidate="tb_Ingred1"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Ingredient 2: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Ingred2" runat="server" Text='<%# Bind("ingredient2") %>' />
                         </td>
                         <td>

                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Ingredient 3: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Ingred3" runat="server" Text='<%# Bind("ingredient3") %>' />
                         </td>
                         <td>

                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Ingredient 4: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Ingred4" runat="server" Text='<%# Bind("ingredient4") %>' />
                         </td>
                         <td>

                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Ingredient 5: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Ingred5" runat="server" Text='<%# Bind("ingredient5") %>' />
                         </td>
                         <td>

                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Preparation: </td>
                         <td style="text-align:left;">
                             <asp:TextBox ID="tb_Prep" runat="server" Text='<%# Bind("preparation") %>' />
                         </td>
                         <td style="text-align=left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter preparation instructions." CssClass="validationError" ControlToValidate="tb_Prep"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:right;">Notes: 

                         </td>
                         <td style="text-align:left;"/>                         
                         <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                         </td>
                         <td>

                         </td>
                     </tr>
                     <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
              
            </EditItemTemplate>
            <InsertItemTemplate>
                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient1:
                <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                 <table>
                   <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Ingredient 1:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient1Label" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Ingredient 2:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient2Label" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Ingredient 3:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient3Label" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Ingredient 4:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient4Label" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Ingredient 5:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient5Label" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Preparation:
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left;>
                            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
    <p class="footer">© 2014 Lindsey Zimanek Zimanek Zimanek</p>
</body>
</html>
