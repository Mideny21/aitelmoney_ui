import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/services.dart';

class ServicePanel extends StatefulWidget {
  const ServicePanel({super.key});

  @override
  State<ServicePanel> createState() => _ServicePanelState();
}

class _ServicePanelState extends State<ServicePanel> {
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
        itemCount: services.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.all(2.0).r,
            child: Stack(
              // alignment: Alignment.r,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: InkWell(
                    onTap: services[index]['tap'],
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
                              child: services[index]['icon'],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            services[index]['name'],
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                services[index]['badge'] == true
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 17.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5).r,
                            color: Colors.red,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0).r,
                            child: Text(
                              "New",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                    : Container()
              ],
            ),
          );
        }));
  }
}
