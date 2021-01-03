import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_list.dart';

import './new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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

  void _addTransaction(String txnTitle, double txnAmount) {
    final newTxn = Transaction(
        title: txnTitle,
        amount: txnAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
