VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub texto_name()
Name = InputBox("ingrese su nombre")
lila = Mid(Name, 1, 3)
MsgBox "los primeros 3 dijitos son:" & lila



End Sub

