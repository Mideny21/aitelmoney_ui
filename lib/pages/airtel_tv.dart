import 'package:airtelmoney_ui/components/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirtelTVScreen extends StatefulWidget {
  const AirtelTVScreen({super.key});

  @override
  State<AirtelTVScreen> createState() => _AirtelTVScreenState();
}

class _AirtelTVScreenState extends State<AirtelTVScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(width: 5.w),
            Icon(Icons.menu),
            SizedBox(width: 5.w),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 18,
              child: Icon(
                Icons.tv_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5.w),
            Text(
              'airtelTV',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
      body: ListView(
        children: [AdvertisementPanel()],
      ),
    );
  }
}
