import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsSection extends StatefulWidget {
  final TabController? controller;
  final List<IconData> icon;
  final List<String> title;
  final double? fontsize;
  final double? iconSize;

  const TabsSection({
    Key? key,
    this.controller,
    required this.icon,
    required this.title,
    this.fontsize,
    this.iconSize,
  }) : super(key: key);

  @override
  State<TabsSection> createState() => _TabsSectionState();
}

class _TabsSectionState extends State<TabsSection> {
  int tappeindex = 0;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (controller) {
        setState(() {
          tappeindex = controller;
        });
      },
      isScrollable: true,
      indicatorWeight: 2,
      controller: widget.controller,
      indicator: BoxDecoration(),
      labelColor: Colors.white,
      labelPadding: EdgeInsets.only(left: 0, right: 0),
      labelStyle: TextStyle(
          fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 15),
      unselectedLabelColor: Colors.black,
      tabs: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                  color: tappeindex == 0 ? Colors.white : null,
                  boxShadow: tappeindex == 0
                      ? [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                  border:
                      tappeindex == 0 ? Border.all(color: Colors.black) : null,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      widget.icon[0],
                      color: Colors.grey,
                      size: widget.iconSize ?? 30.sp,
                    ),
                    // SizedBox(height: 10.h),
                    Padding(
                      padding: const EdgeInsets.all(5.0).r,
                      child: Text(
                        widget.title[0],
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.8,
                            fontSize: widget.fontsize ?? 12.sp),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    tappeindex == 0
                        ? Container(color: Colors.red, width: 50, height: 2)
                        : Container()
                  ])),
        ),
        Container(
            width: 80.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: tappeindex == 1 ? Colors.white : null,
                boxShadow: tappeindex == 1
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ]
                    : null,
                border:
                    tappeindex == 1 ? Border.all(color: Colors.black) : null,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                widget.icon[1],
                color: Colors.grey,
                size: widget.iconSize ?? 30.sp,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0).r,
                child: Text(
                  widget.title[1],
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontSize: widget.fontsize ?? 12.sp),
                ),
              ),
              SizedBox(height: 5.h),
              tappeindex == 1
                  ? Container(color: Colors.red, width: 50, height: 2)
                  : Container()
            ])),
      ],
    );
  }
}
