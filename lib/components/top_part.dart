import 'package:airtelmoney_ui/widgets/painters.dart';
import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  final double height;
  const TopPart({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.red,
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "airtel",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.notifications, color: Colors.white)
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
                      elevation: 8,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("RAYMOND EMMANUEL MWAIKASU"),
                                      Text("Malipo ya kabla - 683152004"),
                                    ],
                                  ),
                                  const Text(
                                    'Kuhusu Akaunti Yangu',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "0",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "TZS",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "salio la Muda wa \n Maongezi",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    const VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "50.00",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Mins",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "salio la Dakika",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    const VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "800.90",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "MB",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "salio la Data",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
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
                                            color: const Color(0xfffdf1f1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.money,
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
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xfffdf1f1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.flash_on_outlined,
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
                      elevation: 8,
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
                                    const Text(
                                      "Airtel Money",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 1),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        side: const BorderSide(
                                            color: Colors.black)),
                                    onPressed: () {},
                                    child: const Text(
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
    ]);
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(color: Colors.black45, height: 58, width: 1),
    );
  }
}
