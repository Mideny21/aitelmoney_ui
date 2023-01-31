import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/colors.dart';

class AdvertisementPanel extends StatefulWidget {
  const AdvertisementPanel({Key? key}) : super(key: key);

  @override
  State<AdvertisementPanel> createState() => _AdvertisementPanelState();
}

class _AdvertisementPanelState extends State<AdvertisementPanel> {
  final advertisements = [
    'assets/images/airtel1.png',
    'assets/images/airtel2.png',
    'assets/images/airtel3.png',
    'assets/images/airtel4.png',
    'assets/images/airtel5.png'
  ];

  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      margin: EdgeInsets.symmetric(vertical: 2.r),
      child: Stack(
        children: [
          PageView(
            controller: _pagecontroller,
            children: advertisements
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5).r,
                            child: Image.asset(e, fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Positioned(
            right: 30,
            bottom: 10,
            child: SmoothPageIndicator(
                controller: _pagecontroller,
                count: advertisements.length,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 4,
                    dotWidth: 8,
                    dotHeight: 8,
                    spacing: 4,
                    dotColor: Colors.white,
                    activeDotColor: AppColors.primaryColor)),
          )
        ],
      ),
    );
  }
}
