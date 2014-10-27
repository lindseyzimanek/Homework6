
Partial Class RecipeDetailsaspx
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedState As String = e.Values("recipe_name").ToString()

        lblDeletedRecipe.Text = deletedState & " has ben deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("./EditRecipe.aspx")
    End Sub
End Class
