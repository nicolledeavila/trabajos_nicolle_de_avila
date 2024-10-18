importar  'dart:io' ;

vacío  principal (){

  print ( 'ingrese numero de estudiantes' );

  int ? n =  int . parse (stdin. readLineSync () ! );

  para ( var numero =  1 ; numero <= n; numero ++ ){

    print ( 'ingresa nota' );
    int ? n1 =  int . parse (stdin. readLineSync () ! );

    print ( 'ingresa nota' );
    int ? n2 =  int . parse (stdin. readLineSync () ! );

    print ( 'ingresa nota' );
    int ? n3 =  int . parse (stdin. readLineSync () ! );

    nota doble = n1 + n2 + n3 /  3 ;

    si (nota <  6 ){
      imprimir ( 'REPROBADO' );

    } demás {
      imprimir ( 'APROBADO' );

    }


  }
}