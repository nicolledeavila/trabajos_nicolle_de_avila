# Clase principal Transporte
class Transporte
    attr_accessor :capacidad
  
    def initialize(capacidad)
      @capacidad = capacidad
    end
  
    def descripcion
      "Este es un medio de transporte con capacidad para #{@capacidad} personas."
    end
  end
  
  # Clase Terrestre que hereda de Transporte
  class Terrestre < Transporte
    attr_accessor :num_ruedas
  
    def initialize(capacidad, num_ruedas)
      super(capacidad)
      @num_ruedas = num_ruedas
    end
  
    def descripcion
      super + " Es un vehículo terrestre con #{@num_ruedas} ruedas."
    end
  end
  
  # Clase Aéreo que hereda de Transporte
  class Aereo < Transporte
    attr_accessor :num_alas
  
    def initialize(capacidad, num_alas)
      super(capacidad)
      @num_alas = num_alas
    end
  
    def descripcion
      super + " Es un vehículo aéreo con #{@num_alas} alas."
    end
  
    def self.tipo_vehiculo
      "Vehículo Aéreo"
    end
  end
  
  # Clase Auto que hereda de Terrestre
  class Auto < Terrestre
    def initialize(capacidad)
      super(capacidad, 4)
    end
  
    def descripcion
      super + " Es un automóvil."
    end
  end
  
  # Clase Moto que hereda de Terrestre
  class Moto < Terrestre
    def initialize(capacidad)
      super(capacidad, 2)
    end
  
    def descripcion
      super + " Es una motocicleta."
    end
  end
  
  # Clase Avion que hereda de Aereo
  class Avion < Aereo
    def initialize(capacidad)
      super(capacidad, 2)
    end
  
    def descripcion
      super + " Es un avión."
    end
  end
  
 
  auto = Auto.new(5)
  puts auto.descripcion
  
  
  moto = Moto.new(2)
  puts moto.descripcion
  
  
  avion = Avion.new(150)
  puts avion.descripcion
  
  
  puts Aereo.tipo_vehiculo
  
end  