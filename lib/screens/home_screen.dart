import 'package:flutter/material.dart';
import 'package:solana/solana.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'wallet_screen.dart'; // Import other screens as needed
import 'package:my_solana_dapp/widgets/get_account_info.dart';

class HomeScreen extends StatefulWidget {
  final SolanaClient solanaClient;
  const HomeScreen({Key? key, required this.solanaClient}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solana Wallet App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Solana Mobile Stack',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Empowering developers to create mobile dApps on Solana.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ConnectWalletButton(
                solanaClient: widget
                    .solanaClient), // Add the Connect Wallet button widget
          ],
        ),
      ),
    );
  }
}
