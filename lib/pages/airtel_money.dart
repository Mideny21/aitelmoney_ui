import 'package:airtelmoney_ui/components/airtelMoney_service.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/airtel_top_part.dart';
import '../components/service_panel.dart';
import 'home_screen.dart';

class AirtelMoneyScreen extends StatefulWidget {
  const AirtelMoneyScreen({super.key});

  @override
  State<AirtelMoneyScreen> createState() => _AirtelMoneyScreenState();
}

class _AirtelMoneyScreenState extends State<AirtelMoneyScreen> {
  final List<String> airtelMoneyimage = [
    'assets/images/airtel4.png',
    'assets/images/airtel2.png',
    'assets/images/airtel3.png',
    'assets/images/airtel1.png',
    'assets/images/airtel5.png'
  ];
  _appBar(height) => PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height + 300),
      child: AirtelMoneyTopPart(height: height));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: MediaQuery.of(context).size.height * 0.24,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.transparent,
                  child: _appBar(AppBar().preferredSize.height),
                ),
              )),
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildListDelegate([
              ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mabadiliko",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                      Text(
                        "Tazama zote",
                        style: TextStyle(color: Colors.blue, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  const AirtelMoneyService(),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: airtelMoneyimage.length,
                        itemBuilder: (context, index) {
                          return PromoBox(
                            imageUrl: airtelMoneyimage[index],
                          );
                        }),
                  ),
                  SizedBox(height: 10.h),
                  MoreDetails(
                    title1: 'OFA MAALUMU',
                    title2: 'OFA Zote',
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.purple,
                            child: Icon(
                              Icons.sell,
                              size: 16.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '245 MB',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Ukomo 1 Day',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp),
                              children: [
                            TextSpan(
                                text: 'TZS ',
                                style: TextStyle(fontSize: 12.sp)),
                            TextSpan(
                                text: '500',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)),
                          ]))
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 60.h,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8)
                                  .r,
                              child: OfferBoxes(
                                title: 'Kuhusu Huduma Pendwa',
                                icon: Icons.star_border_sharp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: Container(
                            height: 60.h,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8)
                                  .r,
                              child: OfferBoxes(
                                title: 'Angalia TV',
                                icon: Icons.tv,
                              ),
                            ),
                          ),
                        )
                      ]),
                ],
              )
            ]),
            // Builds 1000 ListTiles
          ),
        ],
      ),
    );
  }
}
