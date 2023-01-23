import 'package:flutter/material.dart';

class ZaidiScreen extends StatefulWidget {
  const ZaidiScreen({super.key});

  @override
  State<ZaidiScreen> createState() => _ZaidiScreenState();
}

class _ZaidiScreenState extends State<ZaidiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Zaidi")),
    );
  }
}
