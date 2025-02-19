class Transporte{
    String? marca;
}

class Terrestre extends Transporte{
    int? llantas;
}
class Auto extends Terrestre{
    bool? aire;
}
class Moto extends Terrestre{
    int? cascos;
}
class Aereo extends Transporte{
    int? motores;
}
class Avion extends Aereo{
    static void manual(){
        print("fiuuuun");
    }
}

void main(){
    Auto lilith = new Auto();
    lilith.marca = "lambo";
    lilith.llantas = 4;
    lilith.aire = true;
    print("Auto: ${lilith.marca}, ${lilith.llantas}, ${lilith.aire}");

    Moto jiji = new Moto();
    jiji.marca = "Motomoto";
    jiji.llantas = 2;
    jiji.cascos = 1;
    print("Moto: ${jiji.marca}, ${jiji.llantas}, ${jiji.cascos}");
    
    Avion olo = new Avion();
    olo.marca = "autobus";
    olo.motores = 3;
    print( "Avion ${olo.marca}, ${olo.motores}");
    Avion.manual();
}
