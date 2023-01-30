import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:airtelmoney_ui/widgets/painters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopPart extends StatelessWidget {
  final double height;
  const TopPart({
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
          height: height + 260,
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
                        height: 178.h,
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
                                      Text(
                                        "RAYMOND EMMANUEL MWAIKASU",
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                      Text(
                                        "Malipo ya kabla - 683152004",
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Kuhusu Akaunti Yangu',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12.sp),
                                  ),
                                ],
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5).r,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "0",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "TZS",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "salio la Muda wa Maongezi",
                                            softWrap: true,
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    const VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "50.00",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Mins",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "salio la Dakika",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    const VerticalLine(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "800.90",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "MB",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "salio la Data",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 3)
                                    .r,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xfffdf1f1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  color: AppColors.primaryColor,
                                                ),
                                                SizedBox(width: 5.w),
                                                Text(
                                                  "Nunua Bando",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: AppColors
                                                          .primaryColor),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xfffdf1f1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.flash_on_outlined,
                                                  color: AppColors.primaryColor,
                                                ),
                                                SizedBox(width: 5.w),
                                                Text(
                                                  "Nunua Salio",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: AppColors
                                                          .primaryColor),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                      )),
                ),
                Positioned(
                  top: 191.h,
                  left: 0,
                  right: 0,
                  child: Card(
                      elevation: 8,
                      child: SizedBox(
                        height: 65,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Airtel Money",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 1),
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
                                              style:
                                                  TextStyle(fontSize: 12.sp)),
                                          TextSpan(
                                              text: '0',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black)),
                                        ]))
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
                                          fontSize: 12.sp, color: Colors.black),
                                    )),
                              ]),
                        ),
                      )),
                ),
                Positioned(
                  top: 180.h,
                  left: 60,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 180.h,
                  right: 80,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 180.h,
                  left: 75,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
                Positioned(
                  top: 180.h,
                  right: 65,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
      child: Container(color: Colors.black45, height: 60.h, width: 1.w),
    );
  }
}
