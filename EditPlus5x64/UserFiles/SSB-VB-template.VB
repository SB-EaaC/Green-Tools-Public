Private Sub CommandButton1_Click()
    '
    Call EnvironmentalSet
    'IDENTIFICATION
    Call IDENTIFICATION
    'ENVIRONMENT
    Call ENVIRONMENT
    'DATA
    Call DATA
    'PROCEDURE
    Call PROCEDURE
    '
    Close #1
End Sub