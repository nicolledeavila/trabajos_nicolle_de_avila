VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub tREA()
    Name = Cells(2, 2)
   i = 1
      For o = 2 To 9
          i = i + 1
          Cells(o, o) = Name
          For q = 1 To 100000000
          Next q
              
      
       Next o
       
      For c = 9 To 2 Step -1
          Cells(c, 9) = Name
          For Z = 1 To 100000000
          Next Z
             
            
      Next c
      
      For j = 9 To 2 Step -1
          Cells(2, j) = Name
          For m = 1 To 100000000
          Next m
              
            
      Next j
          
      
    
       
      
         


End Sub
