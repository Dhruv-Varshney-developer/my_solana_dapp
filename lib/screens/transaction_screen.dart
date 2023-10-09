import 'package:flutter/material.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:my_solana_dapp/widgets/transaction_form.dart'; // Import the transaction form widget

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Transaction'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TransactionForm(), // Add the transaction form widget
          ],
        ),
      ),
    );
  }
}
