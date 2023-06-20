Public Class ChildrenLearn
  Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    Dim title As String = "Let's Learn!"
    Dim message As String = "Welcome to our educational program. We have a lot of fun activities to help you learn!"

    MessageBox.Show(message, title, MessageBoxButtons.OK, MessageBoxIcon.Information)

    Dim number1 As Integer = 0
    Dim number2 As Integer = 0

    For i As Integer = 0 to 10
        number1 = Int(Rnd() * 10) + 1
        Do
            number2 = Int(Rnd() * 10) + 1
        Loop Until number2 <> number1
		
        Dim answer As Integer = number1 + number2
        Dim prompt As String = "What is the answer to " & number1 & " + " & number2 & "?"
		
        Dim input As String = InputBox(prompt, title)
        Dim validAnswer As Integer = 0

        If Int32.TryParse(input, validAnswer) Then
            If validAnswer = answer Then
                ' Correct Answer
                MessageBox.Show("You are correct! Your answer is " & answer,
                                title, MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                ' Wrong Answer
                MessageBox.Show("Sorry, wrong answer. The correct answer is " & answer,
                                title, MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Else
            ' Invalid Input
            MessageBox.Show("Please enter a valid number",
                            title, MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    Next
End Sub

Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    Dim title As String = "Let's Speculate!"
    Dim message As String = "Let's see if you can guess the number I'm thinking of..."

    MessageBox.Show(message, title, MessageBoxButtons.OK, MessageBoxIcon.Information)

    Dim correctNumber As Integer = Int(Rnd() * 10) + 1
    Dim guess As Integer = 0

    Do
        Dim prompt As String = "What number am I thinking of (between 1 - 10)?"
        Dim input As String = InputBox(prompt, title)
        Dim validGuess As Integer = 0
        If Int32.TryParse(input, validGuess) Then
            guess = validGuess
            If guess = correctNumber Then
                MessageBox.Show("You guessed the correct number! It is " & correctNumber,
                                title, MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Sorry, that is not the correct number. Please try again.",
                                title, MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Else
            MessageBox.Show("Please enter a valid number",
                            title, MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    Loop Until guess = correctNumber
End Sub

Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    Dim title As String = "Let's Memorize!"
    Dim message As String = "We're going to test your memory. Please remember the words that appear and then type them below in the correct order"
	
    MessageBox.Show(message, title, MessageBoxButtons.OK, MessageBoxIcon.Information)
	
    Dim words As New List(Of String)
    words.Add("Wonderful")
    words.Add("Excellent")
    words.Add("Fabulous")
    words.Add("Spectacular")
    words.Add("Incredible")
	
    For Each word As String In words
        MessageBox.Show("Please remember this word: " & word, title, MessageBoxButtons.OK, MessageBoxIcon.Information)
    Next

    Dim reArrange As String = String.Empty
    For Each word As String In words
        Dim prompt As String = "Please type the words in the correct order in the box below."
        Dim input As String = InputBox(prompt, title)
        reArrange = reArrange & input & " "
    Next
	
    Dim correct As String = String.Join(" ", words)
    If reArrange = correct Then
        MessageBox.Show("Well done! You remembered the words correctly",
                        title, MessageBoxButtons.OK, MessageBoxIcon.Information)
    Else
        MessageBox.Show("Sorry, that is not the correct order. The correct order is " & correct,
                        title, MessageBoxButtons.OK, MessageBoxIcon.Error)
    End If
End Sub

End Class