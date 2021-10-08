import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text(
                    'No Transactions added yet',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 20,),
                  Container(
                      height: 200,child: Image.asset('assets/imgs/waiting.png', fit: BoxFit.cover,))
                ],
              )
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                      child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2)),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            '\$${transactions[index].amount.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            DateFormat()
                                .add_yMd()
                                .format(transactions[index].date),
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ));
                },
                itemCount: transactions.length,
              ));
  }
}
