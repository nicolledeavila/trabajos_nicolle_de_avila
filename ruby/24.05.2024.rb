puts "ingrese su nombre"
n = gets.chomp 
puts "ingrese apellido"
ap = gets.chomp 

puts "ingrese un numero:"
n1 = gets.chomp.to_i
puts "ingrese un numero:"
n2 = gets.chomp.to_i
puts "ingrese un numero:"
n3 = gets.chomp.to_i
sum = n1 + n2 + n3 
prom = sum / 3
puts "tu nombre completo es #{n} #{ap}"
puts "el promedio es #{prom}"