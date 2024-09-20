
def suma(num1, num2)
    return num1 + num2
end  

def resta(num1, num2)
    return num1 - num2
end

def divicion(num1, num2)
    if num2 != 0
     return num1 / num2
    else
        return "error: no se puede dividir por cero"
    end  
end

def multiplicacion(num1, num2)
    return num1 * num2  
end

puts("ingrese el primer numero")
num1 = gets.chomp.to_f

puts("ingrese el segundo numero")
num2 = gets.chomp.to_f

puts("seleccione la operacion a realizar")

puts(" 1 es sumar")
puts("2 es restar")
puts("3 es dividir")
puts("4 es multiplicar")

opcion = gets.chomp.to_i

case opcion
when 1
    puts("su suma es de: #{suma(num1, num2)}")
when 2 
    puts("la resta es de: #{resta(num1, num2)}") 
when 3
    puts("su divicion es de: #{divicion(num1, num2)}") 
when 4
    puts("su multiplicacion es de: #{multiplicacion(num1, num2)}")  
else
    puts("opcion invalida")
end    
    


