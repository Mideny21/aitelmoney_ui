import 'package:flutter/material.dart';

import '../data/services.dart';

import '../utils/colors.dart';

class ServicePanel extends StatefulWidget {
  const ServicePanel({super.key});

  @override
  State<ServicePanel> createState() => _ServicePanelState();
}

class _ServicePanelState extends State<ServicePanel> {
  String dropdownValue = 'Tigo Pesa';
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 100,
            crossAxisCount: 4),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: services.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: InkWell(
                    onTap: services[index]['tap'],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: services[index]['icon'],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(services[index]['name'],
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                  ),
                ),
                services[index]['badge'] == true
                    ? Positioned(
                        top: -4,
                        right: 0,
                        child: Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.rectangle),
                          child: Center(
                              child: Text(
                            "New",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ))
                    : Container()
              ],
            ),
          );
        }));
  }
}
