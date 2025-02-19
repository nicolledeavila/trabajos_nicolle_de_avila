import 'dart:math';

String generarcontrasena(int longitud){

 const caracteres = 'abcdefghijklmnñopqrstuvwyxzABCDEFGHIJKLMNÑOPQRSTUVWYXZ1234567890!"#%&/()?¡_-.:';

 Random random = Random();

 String password = '';
 for (int cil = 0; cil < longitud; cil++){
   int indice = random.nextInt(caracteres.length);
    password += caracteres[indice];
 }

 return password;

}

void main(){

 int longitud = 8; // longitud predeterminada
 String contrasenagenerada = generarcontrasena(longitud);
 print (' la contraseña generada es: ${contrasenagenerada} ');
}

