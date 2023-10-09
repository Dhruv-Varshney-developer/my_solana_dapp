import 'package:flutter/material.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:my_solana_dapp/widgets/balance_display.dart';
import 'transaction_screen.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BalanceDisplay(), // Add the balance display widget
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionScreen()),
                );
              },
              child: Text('Send Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
