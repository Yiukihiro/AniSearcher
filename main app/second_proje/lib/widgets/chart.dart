import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
