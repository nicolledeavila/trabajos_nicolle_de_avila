inicio
    escriba "ingrese el numero de alumnos"
    lea numAlumns

    cuenta = 0
    toma = 0
    cuenta2 = 0
    toma2 = 0

    para ciclo = 0 hasta numAlumns -1 con paso 1 hacer

        escriba "ingrese el valor a donar"
        lea donac
        SI  donac =>5000
            comtador = contador++
            acumulador = acumulador++
       SI NO
          comtador2 = contador++
          acumuladorA = acumulador++
       fin si   
    fin para
    cantidad = acumulador + acumulador2
    promg = cantidad / numAlumns
    promM= cuenta / numAlumns
    promMn = toma2 /numAlumns
    escriba "la cantidad de dinero recaudado es de:" , cantidad
    escriba "el promedio general es de" , promg
    escriba "la cantidad de aprendices que donaron mas de 5000 es:" ,toma
    escriba  "la cantidad de aprendices que donaron menos de 5000 es:" , cuenta2
    escriba "total de dinero recaudado por los donantes de menos de 5000 es de:" , toma2 
    escriba "total de dinero recaudado por los donantes de mas de 5000 es de:" , toma
    escriba "promedio de los que donarion mas de 5000", promM
    escriba "promedio de los que donaron menos de 5000", promMn
fin    