import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1001',
      amount: 66.90,
      date: DateTime.now(),
      title: 'Shoes',
    ),
    Transaction(
      id: '1002',
      amount: 33.90,
      date: DateTime.now(),
      title: 'Trouser',
    ),
    Transaction(
      id: '1003',
      amount: 1.90,
      date: DateTime.now(),
      title: 'Bread',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text("CHART!"),
                  elevation: 5,
                )),
            Column(
              children: transactions.map((txn) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Text(
                          txn.amount.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(txn.title),
                          Text(txn.date.toString()),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
