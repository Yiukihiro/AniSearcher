import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transactions_list.dart';
import '/widgets/chart.dart';
import '../models/transaction.dart';

class BodyBlank extends StatefulWidget {
  const BodyBlank({Key? key}) : super(key: key);
  @override
  _BodyBlankState createState() => _BodyBlankState();
}

class _BodyBlankState extends State<BodyBlank> {
  final List<Transaction> _transaction = [
    Transaction(
      name: 'Food',
      id: 't1',
      amount: 5960.55,
      time: DateTime.utc(2022, 02, 05),
    ),
    Transaction(
      name: 'Clothes',
      id: 't2',
      amount: 15170.98,
      time: DateTime.utc(2022, 01, 22),
    )
  ];

  void _addNewTransaction(String txTitle, double txPrice) {
    final newTx = Transaction(
      name: txTitle,
      id: DateTime.now().toString(),
      amount: txPrice,
      time: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Chart(),
          NewTransaction(_addNewTransaction),
          TransactionsList(_transaction),
        ],
      ),
    );
  }
}
