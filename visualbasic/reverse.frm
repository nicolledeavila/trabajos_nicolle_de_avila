VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} reverse 
   Caption         =   "UserForm1"
   ClientHeight    =   3036
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   4584
   OleObjectBlob   =   "reverse.frx":0000
   StartUpPosition =   1  'Centrar en propietario
End
Attribute VB_Name = "reverse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub reverse_Click()
  Dim a, b As Integer
  
  a = Len(TextBox1.Text)
  
  For b = a To 1 Step -1
      TextBox2.Text = TextBox2.Text & Mid(TextBox1.Text, b, 1)
  Next b
  
  
End Sub
