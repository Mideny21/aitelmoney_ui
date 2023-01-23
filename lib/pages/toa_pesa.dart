import 'package:flutter/material.dart';

class ToaPesaScreen extends StatefulWidget {
  const ToaPesaScreen({super.key});

  @override
  State<ToaPesaScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<ToaPesaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Toa Pesa")),
    );
  }
}
