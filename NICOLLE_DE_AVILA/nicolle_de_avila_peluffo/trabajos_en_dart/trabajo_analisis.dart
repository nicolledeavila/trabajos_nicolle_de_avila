class Colaborador {
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String nombre, double aporte, int tipo) {
    this._nombreCompleto = nombre;
    this._aporte = aporte;
    this._tipoColaborador = tipo;
  }

  String getNombreCompleto() {
    return this._nombreCompleto!;
  }

  int getTipo() => _tipoColaborador!;

  @override
  String toString() {
    return "su nombre es: ${this._nombreCompleto}, su aporte es: ${this._aporte}, su tipo de colaboracion es: ${this._tipoColaborador}";
  }

  double getAporte() {
    return this._aporte;
  }
}

class Recolecta {
  List<Colaborador> _colaboradores = [];
  double _montoRecuadar = 0;
  double _balance = 0;

  Recolecta(double monto, double balance) {
    this._montoRecuadar = monto;
    this._balance = balance;
  }

  List<Colaborador> generosos = [];

  void addColaborador(Colaborador colaborador) {
    this._colaboradores.add(colaborador);
    if (colaborador.getAporte() >= 10000) {
      this.generosos.add(colaborador);
    }
  }

  // Método que verifica si la recolecta ha alcanzado el objetivo
  bool finalizada() {
    if (this._balance >= this._montoRecuadar) {
      return true;
    } else {
      return false;
    }
  }

  // Método para obtener la cantidad recaudada por colaboradores generosos
  double recaudoGeneroso() {
    double obtenido1 = 0;
    for (int i = 0; i < generosos.length; i++) {
      obtenido1 += generosos[i].getAporte();
    }
    return obtenido1;
  }

  // Método para obtener la cantidad recaudada por tipo de colaborador
  double recaudoPorTipo(int tipo) {
    double obtenido2 = 0;
    for (int a = 0; a < _colaboradores.length; a++) {
      if (_colaboradores[a].getTipo() == tipo) {
        obtenido2 += _colaboradores[a].getAporte();
      }
    }
    return obtenido2;
  }
}

void main() {
  Colaborador colaborador1 = Colaborador("Kylie", 2000, 3);
  Colaborador colaborador2 = Colaborador("John", 15000, 2);

  Recolecta recolecta = Recolecta(50000, 0);
  recolecta.addColaborador(colaborador1);
  recolecta.addColaborador(colaborador2);

  print(colaborador1.toString());
  print(colaborador2.toString());

  print("Recaudo de colaboradores generosos: ${recolecta.recaudoGeneroso()}");
  print("Recaudo por tipo (tipo 2): ${recolecta.recaudoPorTipo(2)}");
}
