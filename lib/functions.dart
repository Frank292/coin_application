List<int>? calculateChangeWithDenominations(int price, int given,
    {List<int> denominations = const <int>[200, 100, 50, 20, 10, 5, 2, 1]}) {
  var payout = <int>[];
  var rest = given - price;

  if (given < price) return null;

  for (var i = 0; rest > 0 && i < denominations.length; i++) {
    if (rest >= denominations[i]) {
      payout.add(denominations[i]);
      rest -= denominations[i];
      i--;
    }
  }
  return payout;
}
