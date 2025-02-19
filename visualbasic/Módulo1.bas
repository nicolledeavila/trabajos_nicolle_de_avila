Attribute VB_Name = "Módulo1"
Sub Botón1_Haga_clic_en()

 sigui = guardado.Cells(1, 4)
 
 guardado.Cells(sigui, 1) = boton.Cells(7, 4)
 guardado.Cells(sigui, 2) = boton.Cells(9, 4)
 guardado.Cells(sigui, 3) = boton.Cells(11, 4)
 
 boton.Cells(7, 4) = Empty
 boton.Cells(9, 4) = Empty
 boton.Cells(11, 4) = Empty
 
 sigui = sigui + 1
 
 guardado.Cells(1, 4) = sigui
 
 MsgBox ("guardado...:)")
 
 
 
 
End Sub
