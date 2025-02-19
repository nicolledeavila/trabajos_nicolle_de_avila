import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class tarea2 {
    public class Libro {

        private String titulo;
        private String autor;
        private String isbn;

        public Libro(String titulo, String autor, String isbn) {
            this.titulo = titulo;
            this.autor = autor;
            this.isbn = isbn;
        }

        public String getTitulo() {
            return titulo;
        }

        public String getAutor() {
            return autor;

        }

        public String getIsbn() {
            return isbn;

        }

        @Override
        public String toString() {
            return "Titulo: " + titulo + ", Autor: " + autor + ", ISBN: " + isbn;

        }
    }

    public class Biblioteca {
        private List<Libro> libros;

        public Biblioteca() {
            this.libros = new ArrayList<>();
        }

        public void agregarLibro(Libro libro) {
            libros.add(libro);
        }

        public void listarLibros() {

            if (libros.isEmpty()) {
                System.out.println("No hay libros en biblioteca");
            } else {
                for (Libro libro : libros) {
                    System.out.println(libro);
                }
            }
        }

        public Libro buscaLibroPorIsbn(String isbn) {
            for (Libro libro : libros) {
                if (libro.getIsbn().equals(isbn)) {
                    return libro;
                }
            }
            return null;
        }

        public void eliminarLibroPorIsbn(String isbn) {
            Libro libro = buscaLibroPorIsbn(isbn);

            if (libro != null) {
                libros.remove(libro);
                System.out.println("Libro eliminado.");
            } else {
                System.out.println("Libro no encontrado.");
            }

        }

    }

    public class GestorBiblioteca {
        public static void main(String[] args) {
            Biblioteca biblioteca = new Biblioteca();
            Scanner scanner = new Scanner(System.in);
            int opcion;

            do {
                System.out.println("\nGestor de bibloteca:");
                System.out.println("1. Agregar libro");
                System.out.println("2. Listar libros");
                System.out.println("3. Buscar libro por ISBN");
                System.out.println("4. Eliminar libro por ISBN");
                System.out.println("5. Salir");
                System.out.print("Seleccione una opción: ");
                opcion = scanner.nextInt();
                scanner.nextLine(); // Limpiar el buffer

                switch (opcion) {
                    case 1:
                        System.out.print("Ingrese el título del libro: ");
                        String titulo = scanner.nextLine();
                        System.out.print("Ingrese el autor del libro: ");
                        String autor = scanner.nextLine();
                        System.out.print("Ingrese el ISBN del libro: ");
                        String isbn = scanner.nextLine();
                        Libro libro = new Libro(titulo, autor, isbn);
                        biblioteca.agregarLibro(libro);
                        break;
                    case 2:
                        biblioteca.listarLibros();
                        break;
                    case 3:
                        System.out.print("Ingrese el ISBN del libro a buscar: ");
                        String isbnBuscar = scanner.nextLine();
                        Libro libroEncontrado = biblioteca.buscaLibroPorIsbn(isbnBuscar);
                        if (libroEncontrado != null) {
                            System.out.println("Libro encontrado: " + libroEncontrado);
                        } else {
                            System.out.println("Libro no encontrado.");
                        }
                        break;
                    case 4:
                        System.out.print("Ingrese el ISBN del libro a eliminar: ");
                        String isbnEliminar = scanner.nextLine();
                        biblioteca.eliminarLibroPorIsbn(isbnEliminar);
                        break;
                    case 5:
                        System.out.println("Saliendo...");
                        break;
                    default:
                        System.out.println("Opción no válida.");

                }


            } while (opcion != 5);

            scanner.close();
        }
    }

}