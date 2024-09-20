puts "ingrese su declaracion de renta"

varRenta = gets.chomp.to_i

if 0<= varRenta && varRenta <= 10
    dsc = varRenta * 0.20.to_f
    puts "se le ha aplicado un descuento del 20% su valor ahora es de: #{dsc}"
else 
    if 11<= varRenta && varRenta <=100
      dscB = varRenta * 0.10.to_f
      puts "ha resivido un descuento del 10%  su valor ahora es de: #{dscB}"
    else
        if 101<= varRenta && varRenta <= 1000 
           dsc2 = varRenta * 0.05.to_f
           puts "ha resivido un descuento del 5% ahora su valor es de: #{dsc2}"
      else
          varRenta > 1000    
          postD = varRenta * 0.01.to_f
          puts "ha obtenido un descuento del 1% su valor ahora es de: #{postD}"
        end
    end
end    












