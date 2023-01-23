import 'package:flutter/material.dart';

class AirtelMoneyScreen extends StatefulWidget {
  const AirtelMoneyScreen({super.key});

  @override
  State<AirtelMoneyScreen> createState() => _AirtelMoneyScreenState();
}

class _AirtelMoneyScreenState extends State<AirtelMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Airtel Money")),
    );
  }
}
