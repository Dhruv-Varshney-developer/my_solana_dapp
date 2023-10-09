import 'package:flutter/material.dart';
import 'package:my_solana_dapp/screens/smart_contract_screen.dart';
import 'package:my_solana_dapp/screens/transaction_screen.dart';
import 'package:my_solana_dapp/screens/wallet_screen.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:my_solana_dapp/screens/home_screen.dart';
import 'package:solana/solana.dart';

void main() {
  final SolanaClient solanaClient = SolanaClient(
    rpcUrl: Uri.parse('https://api.testnet.solana.com'),
    websocketUrl: Uri.parse('wss://api.testnet.solana.com'),
  );

  runApp(MyApp(solanaClient: solanaClient));

  // Initialize the Solana Mobile Wallet Adapter
}

class MyApp extends StatelessWidget {
  final SolanaClient solanaClient;
  const MyApp({Key? key, required this.solanaClient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solana Wallet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(solanaClient: solanaClient),
      // Define your app's routes here
      routes: {
        '/wallet': (context) => WalletScreen(),
        '/transaction': (context) => TransactionScreen(),
        '/smart_contract': (context) => SmartContractScreen(),
      },
    );
  }
}
