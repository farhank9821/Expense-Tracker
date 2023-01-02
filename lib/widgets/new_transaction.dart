import 'dart:js_util';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            // onChanged: (val) {
            //   titleInput = val;
            // },
            controller: titleControler,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            // onChanged: (val) {
            //   amountInput = val;
            // },
            controller: amountControler,
          ),
          TextButton(
            onPressed: () {
              addTx(
                titleControler.text,
                double.parse(amountControler.text),
              );
            },
            child: Text('Add Transaction'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple,
            ),
          ),
        ]),
      ),
    );
  }
}
