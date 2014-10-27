﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetailsaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
            
            <ItemTemplate>

                <table>
                   <tr>
                        <td>
                            Recipe Name:
                        </td>
                        <td>
                            <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Submitted By:
                        </td>
                        <td>
                            <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Ingredient 1:
                        </td>
                        <td>
                            <asp:Label ID="ingredient1Label" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Ingredient 2:
                        </td>
                        <td>
                            <asp:Label ID="ingredient2Label" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Ingredient 3:
                        </td>
                        <td>
                            <asp:Label ID="ingredient3Label" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Ingredient 4:
                        </td>
                        <td>
                            <asp:Label ID="ingredient4Label" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Ingredient 5:
                        </td>
                        <td>
                            <asp:Label ID="ingredient5Label" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Preparation:
                        </td>
                        <td>
                            <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Notes:
                        </td>
                        <td>
                            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>
                </table>              
               
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
