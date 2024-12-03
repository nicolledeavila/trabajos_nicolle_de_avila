import 'dart:io';

importar  'dart:io' ;

void main (){

  print ( 'ingrese numero de estudiantes' );

  int ? n =  int . parse (stdin. readLineSync () ! );

  if ( var n = 1; numero <= n; numero ++ ){

    print ( 'ingresa nota' );
    int ? n1 =  int . parse (stdin. readLineSync () ! );

    print ( 'ingresa nota' );
    int ? n2 =  int . parse (stdin. readLineSync () ! );

    print ( 'ingresa nota' );
    int ? n3 =  int . parse (stdin. readLineSync () ! );

     double promedio = n1 + n2 + n3 /  3 ;

    if (promedio <  6 ){
      print( 'REPROBADO' );

    } else {
      print ( 'APROBADO' );

    }


  }
}