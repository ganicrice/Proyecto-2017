Imports MySql.Data.MySqlClient
Public Class Form2
    Dim ServerString As String = "server=localhost;port=3306;user=root;password=1234;database=hotel"
    Dim conexion As New MySqlConnection
    Dim datos As DataSet
    Dim adaptador As New MySqlDataAdapter

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        Form3.Show()
        Me.Hide()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Form5.Show()
    End Sub

    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim SQLConnection As MySqlConnection = New MySqlConnection



        Try
            SQLConnection.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT nro_habitacion FROM hotel.habitaciones"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "hotel.habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "hotel.habitaciones"
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try

    End Sub

End Class