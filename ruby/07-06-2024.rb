puts "ingrese numero de alumnos"
numAlumns = gets.chomp.to_f
cuenta = 0;
toma = 0;
cuenta2 = 0;
toma2 = 0;

for ciclo in 1..numAlumns
    puts " ingrse el valor a donar"

    donac = gets.chomp.to_f

   if donac >= 5000
       toma += donac;
       cuenta += 1;
   else
        toma2 += donac;
        cuenta2 += 1; 
   end 
end
cantidad = toma + toma2
promg = cantidad/numAlumns
promM = cuenta / numAlumns
promMn = cuenta2 / numAlumns
puts "la cantidad de dinero recaudado es de: #{cantidad}"
puts "el promedio general es de:#{promg}"
puts "la cantidad de aprendices que donaron mas de 5000 es: #{cuenta}"
puts "la cantidad de aprendices que donaron menos de 5000 es de:#{cuenta2}"
puts "total de dinero recaudado por los donantes de menos de 5000 es de: #{toma2}"
puts "total de dinero recaudado por los donantes de mas de 5000 es de: #{toma}"
puts "promedio de los que donaron mas de 5000 es de: #{promM}"
puts "promedio de los que donaron menos de 5000 es de:#{promMn}"




