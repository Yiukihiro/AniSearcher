import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

class BodyBlank extends StatefulWidget {
  const BodyBlank({Key? key}) : super(key: key);

  @override
  _BodyBlankState createState() => _BodyBlankState();
}

class _BodyBlankState extends State<BodyBlank> {
  final List<Transaction> transaction = [
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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: double.infinity,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.amber,
            elevation: 5,
            shadowColor: Colors.black,
            child: Center(
              child: Text(
                'Chart',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
        Column(
          children: transaction.map((tx) {
            return Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // отрравнивание между объектами строки
              children: [
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    // Цена
                    '${tx.amount} руб',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  padding: const EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // Название
                      tx.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 20),
                    ),
                    Text(
                      // Дата
                      DateFormat().format(tx.time),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ));
          }).toList(),
        )
      ],
    );
  }
}
