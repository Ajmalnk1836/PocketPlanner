import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction screen"),
      ),
      body:  Column(
        children: [
          Center(
            child: Text("Welocome to Transaction Page"),
          )
        ],
      ),
    );
  }
}
