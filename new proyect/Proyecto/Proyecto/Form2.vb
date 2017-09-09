Imports MySql.Data.MySqlClient
Public Class Form2
    conectdb(true)
    Function conectdb(true) As Boolean
        Dim conex As New MySqlConnection("server=localhost; port=3306; user id=root; password=1234; database=hotel")
        Dim da As New MySqlDataAdapter
        Dim dt As DataTable
        Dim Sql As String
        Try
            Sql = "SELECT nro_habitacion FROM hotel.habitaciones"
            da = New MySqlDataAdapter(Sql, conex)
            dt = New DataTable
            da.Fill(dt)
            Datos.DataSource = dt
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Function
    Private Sub TableLayoutPanel1_Paint(ByVal sender As System.Object, ByVal e As System.Windows.Forms.PaintEventArgs)


    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        Form3.Show()
        Me.Hide()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Form5.Show()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub RadioButton3_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles RadioButton3.CheckedChanged

    End Sub

    Private Sub GroupBox1_Enter(sender As System.Object, e As System.EventArgs) Handles GroupBox1.Enter

    End Sub
End Class