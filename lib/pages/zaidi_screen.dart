import 'package:airtelmoney_ui/data/services.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZaidiScreen extends StatefulWidget {
  const ZaidiScreen({super.key});

  @override
  State<ZaidiScreen> createState() => _ZaidiScreenState();
}

class _ZaidiScreenState extends State<ZaidiScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 170.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  AppColors.gradientColor1,
                  AppColors.gradientColor2,
                  AppColors.gradientColor3,
                  AppColors.gradientColor4,
                  AppColors.gradientColor5
                ],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white, size: 45.sp),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'JOHN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '80887090808 - PREPAID',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: zaidiItems[index]['icon'],
                    title: Text(zaidiItems[index]['name']),
                  );
                }),
                separatorBuilder: ((context, index) => Divider(thickness: 2)),
                itemCount: zaidiItems.length)
          ],
        )),
      ),
    );
  }
}
