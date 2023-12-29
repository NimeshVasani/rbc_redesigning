class Transaction {
  String name;
  String amount;
  String date;

  Transaction({required this.name, required this.amount, required this.date});
}

var creditCardTransaction = [
  Transaction(
      name: 'Nike Factory Outlet', amount: '-199.99', date: '26 Dec 2023'),
  Transaction(
      name: 'Interact e-transfer', amount: '+422.00', date: '24 Dec 2023'),
  Transaction(
      name: 'Fountainhead Tuck Shop', amount: '-12.74', date: '23 Dec 2023'),
  Transaction(
      name: 'Canada Revenue Agency', amount: '+126.98', date: '23 Dec 2023'),
  Transaction(
      name: 'Shopper Drug Mart', amount: '-9.21', date: '19 Dec 2023'),
  Transaction(
      name: 'Interact e-transfer', amount: '+844.00', date: '18 Dec 2023'),
  Transaction(name: 'Freshco', amount: '+29.91', date: '14 Dec 2023'),
  Transaction(name: 'Cash Deposit', amount: '-1000.00', date: '13 Dec 2023'),
  Transaction(name: 'Walmart keel st', amount: '-32.91', date: '14 Dec 2023'),
];