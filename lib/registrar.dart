class Registrar {
  Registrar(
      {required this.price, required this.given, required this.registrar});

  int given;
  int price;
  List<int> payout = [];
  List<int> registrar;

  void process() {
    var rest = given - price;

    if (given < price) return;

    for (var i = 0; rest > 0 && i < registrar.length; i++) {
      if (rest >= registrar[i]) {
        rest -= registrar[i];
        payout.add(registrar[i]);
        registrar.removeAt(i);
        i--;
      }
    }

    if (rest != 0) {
      registrar += payout;
      payout.clear();
      return;
    }
    price = 0;
    given = 0;
  }
}
