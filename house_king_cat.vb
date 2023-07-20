Public Class ChildrenLearn
    Private Sub btnStart_Click(sender As Object, e As EventArgs) Handles btnStart.Click
        '******* Show Main Screen *******
        Dim frmMain As New frmMainScreen
        frmMain.ShowDialog()

        '******* Start Learning *******
        Dim frmLearn As New frmLearn
        frmLearn.ShowDialog()

        '******* Show Game Screen *******
        Dim frmGame As New frmGameScreen
        frmGame.ShowDialog()

        '******* Show Quiz Screen *******
        Dim frmQuiz As New frmQuizScreen
        frmQuiz.ShowDialog()

        '******* Show Results Screen *******
        Dim frmResults As New frmResultsScreen
        frmResults.ShowDialog()

        '******* Show Report Screen *******
        Dim frmReport As New frmReportScreen
        frmReport.ShowDialog()

        '******* Close Program *******
        Me.Close()
    End Sub

    Private Sub frmChildrenLearn_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        'Give user option to save progress
        Dim result As DialogResult = MessageBox.Show("Do you wish to save your progress?", "Save Progress?", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question)
        If result = DialogResult.Yes Then
            SaveProgress()
        ElseIf result = DialogResult.No Then
            'Close without saving
        Else
            e.Cancel = True
        End If
    End Sub

    Private Sub SaveProgress()
        'Code to save progress
    End Sub
End Class