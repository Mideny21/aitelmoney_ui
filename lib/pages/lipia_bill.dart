import 'package:flutter/material.dart';

class LipiaBillScreen extends StatefulWidget {
  const LipiaBillScreen({super.key});

  @override
  State<LipiaBillScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<LipiaBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Lipia Bill")),
    );
  }
}
