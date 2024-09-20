VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub transmilenio()
 ol = 1
 juju = 5
 it = 0
  Do While Cells(1, jo) <> "" And it < juju
  
    Cells(1, ol + 1) = Cells(1, ol)
    
    MsgBox "sigue"
    
     Cells(1, ol).ClearContents
     
     ol = ol + 1
     it = it + 1
  Loop
  
     
  
End Sub

