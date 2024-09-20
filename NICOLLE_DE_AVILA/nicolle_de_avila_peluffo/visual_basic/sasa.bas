Attribute VB_Name = "Módulo1"
Sub tarea_11()

    For i = 2 To 7
  
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

