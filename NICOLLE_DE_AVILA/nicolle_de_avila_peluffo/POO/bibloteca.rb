class Libro
    attr_accessor :titulo, :autor, :paginas
  
    # Constructor para inicializar los atributos
    def initialize(titulo, autor, paginas)
      @titulo = titulo
      @autor = autor
      @paginas = paginas
    end
  
    # Método para mostrar la información del libro
    def mostrar_info
      puts "Título: #{@titulo}"
      puts "Autor: #{@autor}"
      puts "Páginas: #{@paginas}"
    end
  end
  
  # Bloque principal del programa
  libro = Libro.new("Cien años de soledad", "Gabriel García Márquez", 417)
  libro.mostrar_info
  