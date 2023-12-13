class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

void main() {
  var transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열
  var transactions2011 = transactions.where((t) => t.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  var names2011 = transactions2011.map((t) => t.trader.name).toList();

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열
  var cities = transactions.map((t) => t.trader.city).toSet();

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열
  var cambridgeTraders = transactions
      .where((t) => t.trader.city == 'Cambridge')
      .map((t) => t.trader.name)
      .toSet()
      .toList()
    ..sort();

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열
  var allTraders = transactions.map((t) => t.trader.name).toSet().toList()
    ..sort();

  // 5. 밀라노에 거래자가 있는가?
  var isTraderInMilan = transactions.any((t) => t.trader.city == 'Milan');

  // 6. 케임브리지에 거주하는 거래자의 모든 트랜잭션값을 출력
  var cambridgeTransactions = transactions
      .where((t) => t.trader.city == 'Cambridge')
      .map((t) => t.value)
      .toList();

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  var maxTransactionValue =
      transactions.map((t) => t.value).reduce((a, b) => a > b ? a : b);

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  var minTransactionValue =
      transactions.map((t) => t.value).reduce((a, b) => a < b ? a : b);

  print('2011년 트랜잭션 이름: $names2011');
  print('모든 도시: $cities');
  print('케임브리지 거래자: $cambridgeTraders');
  print('모든 거래자 이름: $allTraders');
  print('밀라노에 거래자가 있는가? $isTraderInMilan');
  print('케임브리지 트랜잭션값: $cambridgeTransactions');
  print('최대 트랜잭션 값: $maxTransactionValue');
  print('최소 트랜잭션 값: $minTransactionValue');
}
