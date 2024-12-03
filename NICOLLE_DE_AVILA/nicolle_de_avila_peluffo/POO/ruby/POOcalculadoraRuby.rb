class Calculadora
 attr_accessor :operador1, :operador2

    def initialize(operador1, operador2)
        @operador1 = operador1
        @operador2 = operador2
    end  
    
    def suma
        @operador1 +@operador2
    end
    def resta
        @operador1 - @operador2
    end
    def multiplicacion
        @operador1 * @operador2
    end
    def divicion
        if @operador2 != 0
            @operador1 / @operador2
        else
            Float::NAN
        end  
    end              

end    

mi_Calculadora = Calculadora.new(10,5)

puts "suma: #{mi_Calculadora.suma}"
puts "resta: #{mi_Calculadora.resta}"
puts "multiplicacion. #{mi_Calculadora.multiplicacion}"
puts "divicion: #{mi_Calculadora.divicion}"