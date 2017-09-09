Public Class Form4

    Private Sub Button13_Click(sender As System.Object, e As System.EventArgs) Handles Button13.Click
        Me.Hide()
    End Sub

    Private Sub Button14_Click(sender As System.Object, e As System.EventArgs) Handles Button14.Click
        Form3.Label16.Text = ComboBox1.Text + ComboBox2.Text
        Me.Hide()

    End Sub

    Private Sub Label6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub Form4_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class