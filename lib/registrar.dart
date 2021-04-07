class Registrar {
  Registrar(
      {required this.price, required this.given, required this.registrar});

  int given;
  int price;
  List<int> payout = [];
  List<int> registrar;

  void process() {
    var rest = given - price;
    var registrarCopy = List<int>.from(registrar);

    if (given < price) return;

    for (var i = 0; rest > 0 && i < registrarCopy.length; i++) {
      if (rest >= registrarCopy[i]) {
        rest -= registrarCopy[i];
        payout.add(registrarCopy[i]);
        registrarCopy.removeAt(i);
        i -= 2;
      }
    }

    if (rest != 0) {
      payout.clear();
      return;
    }
    registrar = registrarCopy;
    price = 0;
    given = 0;
  }
}
