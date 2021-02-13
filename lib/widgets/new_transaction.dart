import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction ;

  NewTransaction({
    this.addNewTransaction
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title'
              ),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount'
              ),
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            FlatButton(
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                addNewTransaction(titleController.text, double.parse(amountController.text));
                print(titleController.text);
              }, 
              child: Text('Add transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}