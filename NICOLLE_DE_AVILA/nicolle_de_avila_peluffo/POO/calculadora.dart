class Calculadora{
  double? num1 = 0;
  double? num2 = 0;
  String? operacion;

  double suma(){
   return num1! + num2!;
  }
  double resta(){
    return num1! - num2!;
  }
  double multiplicacion(){
    return num1! * num2!;
  }
  double divicion(){
    if(num2 != 0){
        return num1! / num2!;
    }else{
      return double.nan;
    }
  }  

  Calculadora (num1, num2, operacion){
    this.num1 = num1;
    this.num2 = num2;
    this.operacion = operacion;

    }

    void calcular(){

      double? resultado;
      if(operacion == "+"){
        resultado = suma();
      }else if(operacion == "-"){
        resultado = resta();
      }else if(operacion == "*"){
        resultado = multiplicacion();
      }else if(operacion == "/"){
        resultado = divicion();
      }
      print('la respuesta es: ${resultado}');
    }
  }

 void main(){
   Calculadora mi_Calculadora = new Calculadora(2, 2, "+");
   mi_Calculadora.calcular();
 }
   
