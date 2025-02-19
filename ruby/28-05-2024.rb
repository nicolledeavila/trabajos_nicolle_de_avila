puts "ingrese numero de estudiantes"
    n = gets.chomp.to_f

for numero in 1..n

    puts "ingrese nota"
    n1 = gets.chomp.to_f

    puts "ingrese nota"
    n2 = gets.chomp.to_f

    puts "ingrese nota"
    n3 = gets.chomp.to_f

    nota = (n1 + n2 + n3)/ 3
    if nota < 6
       puts "REPOBADO"

    else
       puts "APROBADO"



    end


end    