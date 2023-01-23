import 'package:airtelmoney_ui/components/service_panel.dart';
import 'package:airtelmoney_ui/components/top_part.dart';
import 'package:flutter/material.dart';

import '../widgets/painters.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _appBar(height) => PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height + 300),
      child: TopPart(height: height));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mabadiliko",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Tazama zote",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                ServicePanel()
              ],
            ),
          )),
    );
  }
}
