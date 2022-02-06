class Transaction {
  final String name;
  final String id;
  final double amount;
  final DateTime time;

  Transaction(
      {required this.name,
      required this.id,
      required this.amount,
      required this.time});
}
