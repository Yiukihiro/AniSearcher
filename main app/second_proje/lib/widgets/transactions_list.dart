import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> usertransaction;

  TransactionsList(this.usertransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: usertransaction.map((tx) {
        return Card(
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.start, // отрравнивание между объектами строки
            children: [
              Container(
                width: 150,
                margin: const EdgeInsets.only(right: 100),
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
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    // Дата
                    DateFormat.yMMMd().format(tx.time),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
