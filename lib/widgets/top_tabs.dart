import 'package:flutter/material.dart';

class TabsSection extends StatefulWidget {
  final TabController? controller;

  const TabsSection({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<TabsSection> createState() => _TabsSectionState();
}

class _TabsSectionState extends State<TabsSection> {
  int tappeindex = 0;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (controller) {
        setState(() {
          tappeindex = controller;
        });
      },
      isScrollable: true,
      indicatorWeight: 2,
      controller: widget.controller,
      indicator: BoxDecoration(),
      labelColor: Colors.white,
      labelPadding: EdgeInsets.only(left: 0, right: 0),
      labelStyle: TextStyle(
          fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 15),
      unselectedLabelColor: Colors.black,
      tabs: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                  color: tappeindex == 0 ? Colors.white : null,
                  boxShadow: tappeindex == 0
                      ? [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                  border:
                      tappeindex == 0 ? Border.all(color: Colors.black) : null,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mtu",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 3),
                    tappeindex == 0
                        ? Container(color: Colors.red, width: 50, height: 2)
                        : Container()
                  ])),
        ),
        Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                color: tappeindex == 1 ? Colors.white : null,
                boxShadow: tappeindex == 1
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ]
                    : null,
                border:
                    tappeindex == 1 ? Border.all(color: Colors.black) : null,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.account_balance,
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              Text(
                "Benki",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 5),
              tappeindex == 1
                  ? Container(color: Colors.red, width: 50, height: 2)
                  : Container()
            ])),
      ],
    );
  }
}
