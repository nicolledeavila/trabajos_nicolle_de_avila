VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub codigo()

   cant = InputBox("ingrese cantidad de personas a digitar")


    For i = 2 To cant
    
  
       Name = Cells(i, 1)
       municip = Cells(i, 2)
       placa = Cells(i, 3)
       
       digito1 = Len(Name)
       digito2 = Len(placa)
       
       Tex = Mid(municip, 1, 3)
       tex2 = Mid(Name, digito1 - 1, 2)
       tex3 = Mid(placa, digito2 - 2, 3)
    
       resultado = Tex & tex2 & tex3
    
       Cells(i, 4) = resultado
    
   
    Next i
    
   
    

  
    
End Sub
