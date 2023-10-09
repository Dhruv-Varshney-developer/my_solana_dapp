import 'package:flutter/material.dart';
import 'package:solana/solana.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:my_solana_dapp/screens/wallet_screen.dart';

class ConnectWalletButton extends StatelessWidget {
  final SolanaClient solanaClient;
  ConnectWalletButton({Key? key, required this.solanaClient}) : super(key: key);

  String pubKey = "enter your pub key";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Request wallet connection
        final accountinfo = await solanaClient.rpcClient.getAccountInfo(pubKey);

        if (accountinfo != null) {
          // Wallet is connected, navigate to the wallet screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalletScreen()),
          );
        } else {
          // Wallet connection failed or was canceled
        }
      },
      child: Text("Your account info"),
    );
  }
}
