void main() {
 for (var vele = 0; vele <= 10; vele++) {
   print ('el valor de vele es igual a $vele');
 }
   //forma 2

  var carro = ['toyota,lambo,nissan'];

  for (var vale = 0; vale < carro.length; vale++) {
    print ('el valor de carro es ${carro[vale]}');
  }

  //forma sensilla

  // ignore: unused_local_variable
  for ( var carro in carro); {
  print ('el valor de carro es $carro');
  }
}

