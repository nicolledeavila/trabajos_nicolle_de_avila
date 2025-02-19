class Calculadora{
 double operando1;
 double operando2;

 Calculadora(this.operando1, this.operando2);

 double suma(){
   return operando1 + operando2;
 }
  double resta(){
    return operando1 - operando2;
  }
 double multiplicacion(){
   return operando1 * operando2;
 }
 double division(){
   if (operando2 != 0){
     return operando1 / operando2;
   } else{
     return double.nan; 
   }
 }
 
}

void main(){
  Calculadora miCalculadora = new Calculadora(10, 5);

  print('suma: ${miCalculadora.suma()}');
  print('resta: ${miCalculadora.resta()}');
  print('multiplicacion: ${miCalculadora.multiplicacion()}');
  print('divicion: ${miCalculadora.division()}');
}
