class Producto {
  String nombre;
  double precio;
  int stock;

  Producto(this.nombre, this.precio, this.stock);

  void reducirStock(int cantidad) {
    if (cantidad <= stock) {
      stock -= cantidad;
    } else {
      print('Stock insuficiente para $nombre');
    }
  }

  @override
  String toString() {
    return '$nombre: \$${precio.toStringAsFixed(2)}, Stock: $stock';
  }
}


class Cliente {
  String nombre;
  Carrito carrito;

  Cliente(this.nombre) : carrito = Carrito();

  void agregarProductoAlCarrito(Producto producto, int cantidad) {
    carrito.agregarProducto(producto, cantidad);
  }

  void verCarrito() {
    carrito.mostrarProductos();
  }

  void comprar() {
    carrito.comprar();
  }

  @override
  String toString() {
    return 'Cliente: $nombre';
  }
}

class Carrito {
  Map<Producto, int> productos = {};

  void agregarProducto(Producto producto, int cantidad) {
    if (producto.stock >= cantidad) {
      productos[producto] = (productos[producto] ?? 0) + cantidad;
      producto.reducirStock(cantidad);
    } else {
      print('Stock insuficiente para $producto.nombre');
    }
  }

  void mostrarProductos() {
    productos.forEach((producto, cantidad) {
      print('${producto.nombre}: $cantidad');
    });
  }

  void comprar() {
    double total = 0.0;
    productos.forEach((producto, cantidad) {
      total += producto.precio * cantidad;
    });
    print('Total a pagar: \$${total.toStringAsFixed(2)}');
    productos.clear();
  }
}

class Tienda {
  List<Producto> inventario = [];

  void agregarProducto(Producto producto) {
    inventario.add(producto);
  }

  void mostrarInventario() {
    inventario.forEach((producto) {
      print(producto);
    });
  }
}

void main() {
  // Crear productos
  Producto manzana = Producto('Manzana', 0.5, 100);
  Producto pan = Producto('Pan', 1.5, 50);
  Producto leche = Producto('Leche', 0.9, 200);

  // Crear tienda
  Tienda tienda = Tienda();
  tienda.agregarProducto(manzana);
  tienda.agregarProducto(pan);
  tienda.agregarProducto(leche);

  // Mostrar inventario de la tienda
  print('Inventario de la tienda:');
  tienda.mostrarInventario();

  // Crear cliente
  Cliente cliente = Cliente('Juan');
  
  // Cliente agrega productos al carrito
  cliente.agregarProductoAlCarrito(manzana, 10);
  cliente.agregarProductoAlCarrito(pan, 2);
  cliente.agregarProductoAlCarrito(leche, 5);

  // Mostrar contenido del carrito
  print('\nContenido del carrito:');
  cliente.verCarrito();

  // Cliente realiza la compra
  cliente.comprar();

  // Mostrar inventario de la tienda después de la compra
  print('\nInventario de la tienda después de la compra:');
  tienda.mostrarInventario();
}
