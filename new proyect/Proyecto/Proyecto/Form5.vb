Imports MySql.Data.MySqlClient

Public Class Checkout

    Dim ServerString As String = "server=localhost;port=3306;user=root;password=1234;database=hotel"
    Dim conexion As New MySqlConnection
    Dim datos As DataSet
    Dim adaptador As New MySqlDataAdapter

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.Hide()
        Form2.Show()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            Dim newdate
            newdate = Format(TextBox3.Text, " yyyy-MM-dd ")
            MsgBox(newdate)
            consulta = "INSERT INTO historial H (H.nombre, H.documento, H.nro_habitacion, H.fecha_ingreso, H.fecha_salida) VALUES ('" & TextBox2.Text & "' , '" & TextBox4.Text & "' , '" & TextBox6.Text & "' , '" & TextBox3.Text & "' , '" & TextBox5.Text & "')"
            MsgBox(consulta)
            datos = New DataSet
            conexion.Close()

            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta2 As String
            consulta2 = "UPDATE estado_habitacion EH SET EH.nro_documento = 0, EH.estado = 'libre', EH.fecha_ingreso = NULL, EH.fecha_salida = NULL WHERE EH.nro_habitacion = '" & TextBox6.Text & "'"
            datos = New DataSet
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try

        Me.Hide()
    End Sub

    Private Sub Form5_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

        Try
            conexion.ConnectionString = ServerString
            conexion.Open()
            Dim consulta As String
            consulta = "SELECT H.nombre, H.documento, EH.nro_habitacion, EH.fecha_ingreso, EH.fecha_salida FROM huesped H, estado_habitacion EH WHERE H.documento = EH.nro_documento AND EH.estado = 'ocupado'"
            adaptador = New MySqlDataAdapter(consulta, conexion)
            datos = New DataSet
            adaptador.Fill(datos, "habitaciones")
            Datoscheckout.DataSource = datos
            Datoscheckout.DataMember = "habitaciones"
            conexion.Close()
        Catch Ex As Exception
            MsgBox(Ex.Message)
        End Try

    End Sub

    Private Sub TextBox1_KeyPress(sender As System.Object, e As System.Windows.Forms.KeyPressEventArgs) Handles FiltroCheckout.KeyPress
        If IsNumeric(FiltroCheckout.Text) Then

        End If
    End Sub

    Private Sub Datoscheckout_CellClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles Datoscheckout.CellClick
        Dim Fila As Integer
        Fila = Datoscheckout.CurrentRow.Index
        TextBox2.Text = Datoscheckout.Item(0, Fila).Value()
        TextBox4.Text = Datoscheckout.Item(1, Fila).Value()
        TextBox6.Text = Datoscheckout.Item(2, Fila).Value()
        TextBox3.Text = Datoscheckout.Item(3, Fila).Value()
        TextBox5.Text = Datoscheckout.Item(4, Fila).Value()
    End Sub
End Class