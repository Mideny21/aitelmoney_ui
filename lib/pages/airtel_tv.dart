import 'package:flutter/material.dart';

class AirtelTVScreen extends StatefulWidget {
  const AirtelTVScreen({super.key});

  @override
  State<AirtelTVScreen> createState() => _AirtelTVScreenState();
}

class _AirtelTVScreenState extends State<AirtelTVScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Airtel TV")),
    );
  }
}
