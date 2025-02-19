

preguntas_respuestas = {"cual es la capital de colombia?" => "bogota", "¿em que año se descubrio america?" => "1492", "cuantos dias dura la semana?" => "7"}

  puntuacion = 0

 preguntas_respuestas.each do |pregunta,respuesta|
    puts pregunta
    Usuario_respuesta = gets.chomp

    if Usuario_respuesta.downcase == respuesta.downcase
        puts "¡respuesta correcta!"
        puntuacion +=1
    else
        puts "respuesta incorrecta. la respuesta correcta es: #{respuesta}¡"
    end
end    
puts "tu puntuacion es de: #{puntuacion}"