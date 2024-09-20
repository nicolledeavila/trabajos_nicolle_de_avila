continuar = true

while continuar do 
    puts"¿quieres continuar? (si/no)"
    respuesta = gets.chomp.downcase

    if respuesta == "no"
        continuar = false
    end
end

puts "fin del programa"
