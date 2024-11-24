
abstract class Product{
  void doStruff();
}

class ProductoA implements Product{
 @override
  void doStruff() {
    print('hola');
  }
}

class Productob implements Product{
 @override
  void doStruff() {
    print('como estas');
  }
}

abstract class Creator{
  Product createproducto();
  
}

class ConcretecreadorA implements Creator{
 @override
  Product createproducto(){
    return ProductoA();
  }
}

class ConcretecreadorB implements Creator{
  @override
  
  Product createproducto(){
    return Productob();
  }
}

void main(){
  Creator creator = ConcretecreadorA();
  Product prd = creator.createproducto();
  prd.doStruff();
}



