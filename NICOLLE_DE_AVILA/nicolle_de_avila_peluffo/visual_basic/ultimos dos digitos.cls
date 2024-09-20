VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub escribircelda()
 Dim cant As Integer
 Dim i As Integer
 Dim Name As String
 Dim dos As String
 
 cant = InputBox("coloca 2")
  
  For i = 2 To Int(cant)
    Name = Cells(i, 1).Value
    Text = Len(Name)
    dos = Mid(Name, Text - 1, 2)
    Cells(i, 2).Value = dos
  Next i
  
End Sub
