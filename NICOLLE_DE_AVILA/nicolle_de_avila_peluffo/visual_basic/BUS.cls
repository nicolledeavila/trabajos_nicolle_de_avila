VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "BUS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub metro()
cant = InputBox("cuantos nombres a deletrear")
For c = 1 To cant
  deletrear = BUS.Cells(c, 1)
    For i = 1 To Len(deletrear)
      BUS.Cells(c, i + 1) = Mid(deletrear, i, 1)
   
    Next i
 Next c
 
 
 

End Sub


