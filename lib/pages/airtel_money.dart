import 'package:airtelmoney_ui/components/airtelMoney_service.dart';
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
