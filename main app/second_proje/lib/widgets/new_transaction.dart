import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  final titleController = TextEditingController();
  final priceController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  void submitData() {
    final checkTController = titleController.text;
    final chickPController = double.parse(priceController.text);

    if (checkTController.isEmpty || chickPController <= 0) {
      return;
    }
    addTx(
      checkTController,
      chickPController,
    );
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
