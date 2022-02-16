import 'package:flutter/material.dart';

import 'widgets/new_transaction.dart';
import 'models/transaction.dart';
import 'widgets/chart.dart';
import 'widgets/transactions_list.dart';

void main() => runApp(_Second());

class _Second extends StatelessWidget {
  const _Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get New App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Apple',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       headline5: const TextStyle(fontFamily: 'Apple', fontSize: 20),
        //     ),
        brightness: Brightness.light,
      ),
      home: _NewPage(),
    );
  }
}

class _NewPage extends StatefulWidget {
  @override
  State<_NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<_NewPage> {
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

    setState(
      () {
        _transaction.add(newTx);
      },
    );
  }

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 50),
          child: const Center(
            child: Text('Transactions'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => _startNewTransaction(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Chart(),
            TransactionsList(_transaction),
          ],
        ),
      ),
    );
  }
}
