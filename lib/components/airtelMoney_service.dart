import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/services.dart';

class AirtelMoneyService extends StatefulWidget {
  const AirtelMoneyService({super.key});

  @override
  State<AirtelMoneyService> createState() => _AirtelMoneyServiceState();
}

class _AirtelMoneyServiceState extends State<AirtelMoneyService> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            mainAxisExtent: 120,
            crossAxisCount: 4),
        shrinkWrap: true,
        padding: const EdgeInsets.all(4).r,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: airtelMoneyservices.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0).r,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: InkWell(
                    onTap: airtelMoneyservices[index]['tap'],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3)
                          .r,
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
                              child: airtelMoneyservices[index]['icon'],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            airtelMoneyservices[index]['name'],
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
