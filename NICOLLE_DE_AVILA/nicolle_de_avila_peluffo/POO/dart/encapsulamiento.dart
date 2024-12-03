class CuentaBancaria{
  late int numeroDeCuenta;
  late double saldo;


  CuentaBancaria(this.numeroDeCuenta, this.saldo);

  void deposiar(double monto){
    if(monto > 0){
       saldo += monto;

      print("deposito realizado con exito $saldo");
    }else{
      print("error: el monto debe ser mayor 0");
    }
  }
  void retiar (double monto){
    if(monto > 0 && saldo>=monto){
      saldo -= monto;

      print("retiro realizado con exito nuebo saldo: $saldo");
    }else if(monto <= 0){
      print( "error: el monto debe ser mayor a 0");

    }else{
      print("error: saldo insuficiente");
    }
  }
  double getSaldo(){
    return saldo;
  }
}


void main(){
  CuentaBancaria cuenta = CuentaBancaria(1221475212, 1255555);
  print("saldo inicial: ${cuenta.getSaldo()}");
  cuenta.deposiar(5000);
  cuenta.retiar(2200);
  print("saldo final: ${cuenta.getSaldo()}");
}
