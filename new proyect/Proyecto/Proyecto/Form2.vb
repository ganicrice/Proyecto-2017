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
        Checkout.Show()
    End Sub

    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        RadioButton4.Checked = True
        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nro_habitacion, EH.estado, EH.nro_documento, EH.fecha_ingreso, EH.fecha_salida  FROM habitaciones H, estado_habitacion EH WHERE H.nro_habitacion = EH.nro_habitacion"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try

    End Sub

    Private Sub RadioButton2_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles RadioButton2.CheckedChanged
        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nro_habitacion, EH.estado, EH.nro_documento, EH.fecha_ingreso, EH.fecha_salida FROM habitaciones H, estado_habitacion EH WHERE H.nro_habitacion = EH.nro_habitacion AND EH.estado = 'ocupado'"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try
    End Sub

    Private Sub RadioButton3_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles RadioButton3.CheckedChanged
        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nro_habitacion, EH.estado, EH.nro_documento, EH.fecha_ingreso, EH.fecha_salida FROM habitaciones H, estado_habitacion EH WHERE H.nro_habitacion = EH.nro_habitacion AND EH.estado = 'reservado'"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try
    End Sub

    Private Sub RadioButton1_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles RadioButton1.CheckedChanged
        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nro_habitacion, EH.estado, EH.nro_documento, EH.fecha_ingreso, EH.fecha_salida FROM habitaciones H, estado_habitacion EH WHERE H.nro_habitacion = EH.nro_habitacion AND EH.estado = 'libre'"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try
    End Sub

    Private Sub RadioButton4_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles RadioButton4.CheckedChanged
        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nro_habitacion, EH.estado, EH.nro_documento, EH.fecha_ingreso, EH.fecha_salida  FROM habitaciones H, estado_habitacion EH WHERE H.nro_habitacion = EH.nro_habitacion"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            DataGreedView1.DataSource = datos
            DataGreedView1.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try
    End Sub
End Class