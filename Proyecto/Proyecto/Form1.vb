Imports MySql.Data.MySqlClient
Public Class Form1
    Dim conex As New MySqlConnection("data source=localhost;user id=root; password=''; database=proyecto")
    Dim da As New MySqlDataAdapter
    Dim dt As DataTable
    Dim sql As String
    Dim comando As MySqlCommand
    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        Me.Hide()
        Form2.Show()
    End Sub
    Private Sub ShowData()
        Try
            sql = "select * From funcionarios"
            da = New MySqlDataAdapter(sql, conex)
            dt = New DataTable
            da.Fill(dt)
            Datos.DataSource = dt
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Form1_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Datos_CellContentClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs)

    End Sub

    Private Sub Datos_RowEnter(sender As Object, e As System.Windows.Forms.DataGridViewCellEventArgs)
        sql = Datos.Rows(e.RowIndex).Cells(0).Value.ToString
    End Sub
End Class
