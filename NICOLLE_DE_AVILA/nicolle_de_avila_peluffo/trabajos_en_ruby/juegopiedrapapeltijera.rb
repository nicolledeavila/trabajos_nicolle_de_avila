opciones = ['Piedra', 'Papel', 'Tijeras']

while true
  puts 'Elige Piedra, Papel o Tijeras (o salir para terminar): '
  eleccion_usuario = gets.chomp

  break if eleccion_usuario.downcase == 'salir'

  indice_computadora = rand(3)
  eleccion_computadora = opciones[indice_computadora]

  puts "La computadora eligió: #{eleccion_computadora}"

  if eleccion_usuario == eleccion_computadora
    puts '¡Empate!'
  elsif (eleccion_usuario == 'Piedra' && eleccion_computadora == 'Tijeras') ||
        (eleccion_usuario == 'Papel' && eleccion_computadora == 'Piedra') ||
        (eleccion_usuario == 'Tijeras' && eleccion_computadora == 'Papel')
    puts '¡perdiste!'
  else
    puts '¡ganaste!'
  end
end

puts 'Gracias por jugar!'