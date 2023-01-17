import 'package:flutter/material.dart';

import '../widgets/painters.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _appBar(height) => PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height + 250),
      child: Stack(children: [
        Container(
          color: Colors.red,
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "airtel",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.alarm, color: Colors.white),
                      Icon(Icons.notification_add, color: Colors.white)
                    ],
                  )
                ]),
          ),
        ),
        Container(),
        Positioned(
          top: 100,
          left: 5,
          right: 5,
          child: SizedBox(
            height: height + 200,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Card(
                      child: SizedBox(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Airtel Money")),
                  )),
                ),
                Positioned(
                  top: 188,
                  left: 0,
                  child: Card(
                      child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Airtel Money")),
                  )),
                ),
                Positioned(
                  top: 172,
                  left: 25,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 172,
                  right: 55,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 174,
                  left: 40,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
                Positioned(
                  top: 174,
                  right: 40,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}
