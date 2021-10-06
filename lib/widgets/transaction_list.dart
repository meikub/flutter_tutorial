import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
          return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2)),
                    padding: const EdgeInsets.all(10.0),
                    child: Text('\$${tx.amount}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tx.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat().add_yMd().format(tx.date),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ));
        }).toList());
  }
}
