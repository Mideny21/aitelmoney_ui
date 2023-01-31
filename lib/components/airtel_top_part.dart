import 'package:airtelmoney_ui/components/top_part.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:airtelmoney_ui/widgets/painters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirtelMoneyTopPart extends StatelessWidget {
  final double height;
  const AirtelMoneyTopPart({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: AppColors.primaryColor,
        height: 125.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "airtel",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
                SizedBox(width: 8.w),
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
          height: height + 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3).r,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Card(
                      elevation: 8,
                      child: SizedBox(
                        height: 110.h,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 10)
                              .r,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "JOHN",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          VerticalLine(
                                            height: 12.h,
                                            color: Colors.black,
                                            width: 2.w,
                                            padding: EdgeInsets.symmetric(
                                                    horizontal: 3, vertical: 3)
                                                .r,
                                          ),
                                          Text(
                                            "6567876",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Salio lako",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
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
                                      child: Text(
                                        'Ficha Salio',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                              const Divider(thickness: 1),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.wallet,
                                          color: AppColors.primaryColor,
                                          size: 35.sp),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "Airtel Money",
                                        style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('TZS',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.primaryColor)),
                                      Text('0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp,
                                              color: Colors.grey))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
