'Pizza Order SP Application

'(C) COPYRIGHT 2004 BY HENDRA GUNAWAN DJAJA
'ALL RIGHTS RESERVED.

'IF YOU HAVE ANY COMMENTS, SUGGESTIONS , OR NEED A HELP
'PLEASE SEND ME AN E-MAIL AT : hendragd@yahoo.com
'OR LETTER TO MY ADDRESS :

'*********************************
'*   TAMAN PABUARAN BLOK A7/33   *
'*   TANGERANG PO BOX 15115      *
'*   INDONESIA                   *
'*********************************

'THANKS TO MY FAMILY (DJAJA FAMILY'S), ESPECIALLY TO 'MY PARENTS' AND 
'THANKS TO MY FRIENDS IN ALL THE WORLD FOR SUGGESTION, FRIENDSHIP AND MORE.
'GOOD BLESS US.

'I WILL BE GLAD TO HELP YOU (ONLY IF I CAN & HAVE A TIME). THANKS.

Public Class WebForm1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        Me.SqlCommand1 = New System.Data.SqlClient.SqlCommand
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""SOLUSIND-KTH5E6"";packet size=4096;user id=sa;data source=""."";pers" & _
        "ist security info=True;initial catalog=Northwind;password=admin"
        '
        'SqlCommand1
        '
        Me.SqlCommand1.CommandText = "dbo.[InsertPizzaOrders]"
        Me.SqlCommand1.CommandType = System.Data.CommandType.StoredProcedure
        Me.SqlCommand1.Connection = Me.SqlConnection1
        Me.SqlCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@RETURN_VALUE", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.ReturnValue, False, CType(0, Byte), CType(0, Byte), "", System.Data.DataRowVersion.Current, Nothing))
        Me.SqlCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@customer", System.Data.SqlDbType.VarChar, 100))
        Me.SqlCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@pizzatype", System.Data.SqlDbType.TinyInt, 1))
        Me.SqlCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@comments", System.Data.SqlDbType.VarChar, 2147483647))

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents RadioButtonList1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents TextBox2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlCommand1 As System.Data.SqlClient.SqlCommand

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If IsValid Then
            SqlCommand1.Parameters("@customer").Value = TextBox1.Text
            SqlCommand1.Parameters("@pizzatype").Value = RadioButtonList1.SelectedItem.Value()
            SqlCommand1.Parameters("@comments").Value = TextBox2.Text
            SqlConnection1.Open()
            SqlCommand1.ExecuteNonQuery()
            SqlConnection1.Close()
            Response.Redirect("WebForm2.aspx")
        End If
    End Sub

End Class
