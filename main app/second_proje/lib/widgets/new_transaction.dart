import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final priceController = TextEditingController();

  void submitData() {
    final checkTController = titleController.text;
    final chickPController = double.parse(priceController.text);

    if (checkTController.isEmpty || chickPController <= 0) {
      return;
    }
    widget.addTx(
      checkTController,
      chickPController,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: 'Что куплено / Не более 7 символов'),
              controller: titleController,
            ),
            TextField(
              decoration:
                  const InputDecoration(hintText: 'Сумма / Не более 7 знаков'),
              controller: priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
              child: const Text(
                'Добавить',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
