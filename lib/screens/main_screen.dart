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
          top: 90,
          left: 5,
          right: 5,
          child: SizedBox(
            height: height + 244,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Card(
                        child: SizedBox(
                      height: 205,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("RAYMOND EMMANUEL MWAIKASU"),
                                    Text("Malipo ya kabla - 683152004"),
                                  ],
                                ),
                                Text(
                                  'Kuhusu Akaunti Yangu',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                            Divider(thickness: 1),
                            // SizedBox(height: 3),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("0"),
                                          SizedBox(height: 5),
                                          Text(
                                            "TZS",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(height: 5),
                                          Text("salio la Muda wa \n Maongezi")
                                        ],
                                      ),
                                    ),
                                    VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("0"),
                                          SizedBox(height: 5),
                                          Text(
                                            "Mins",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(height: 5),
                                          Text("salio la Dakika")
                                        ],
                                      ),
                                    ),
                                    VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("0"),
                                          SizedBox(height: 5),
                                          Text(
                                            "MB",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(height: 5),
                                          Text("salio la Data")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(thickness: 1),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xfffdf1f1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.dangerous,
                                                color: Colors.red,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Nunua Bando",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xfffdf1f1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.dangerous,
                                                color: Colors.red,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Nunua Salio",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    )),
                  ),
                  Positioned(
                    top: 224,
                    left: 0,
                    right: 0,
                    child: Card(
                        child: SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Airtel Money",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              letterSpacing: 1,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                          children: [
                                        TextSpan(
                                            text: 'TZS ',
                                            style: TextStyle(fontSize: 14)),
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.5,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black)),
                                      ]))
                                ],
                              ),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      side: BorderSide(
                                        color: Colors.black,
                                      )),
                                  onPressed: () {},
                                  child: Text(
                                    'Ficha Salio',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ]),
                      ),
                    )),
                  ),
                  Positioned(
                    top: 207,
                    left: 25,
                    child: CustomPaint(
                      painter: HolderPainter(),
                    ),
                  ),
                  Positioned(
                    top: 207,
                    right: 55,
                    child: CustomPaint(
                      painter: HolderPainter(),
                    ),
                  ),
                  Positioned(
                    top: 208,
                    left: 40,
                    child: CustomPaint(
                      painter: RopePainter(),
                    ),
                  ),
                  Positioned(
                    top: 208,
                    right: 40,
                    child: CustomPaint(
                      painter: RopePainter(),
                    ),
                  ),
                ],
              ),
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
          child: Container()),
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
        color: Colors.black45, indent: 20, endIndent: 0, width: 20);
  }
}
