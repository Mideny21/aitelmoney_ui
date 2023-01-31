import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:airtelmoney_ui/components/service_panel.dart';
import 'package:airtelmoney_ui/utils/colors.dart';

import '../components/top_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> image = [
    'assets/images/airtel1.png',
    'assets/images/airtel2.png',
    'assets/images/airtel3.png',
    'assets/images/airtel4.png',
    'assets/images/airtel5.png'
  ];

  _appBar(height) => PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height + 300),
      child: TopPart(height: height));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: MediaQuery.of(context).size.height * 0.44,
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
                  MoreDetails(
                    title1: 'Mabadiliko',
                    title2: 'Tazama Zote',
                  ),
                  const ServicePanel(),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: image.length,
                        itemBuilder: (context, index) {
                          return PromoBox(
                            imageUrl: image[index],
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
                            radius: 15,
                            backgroundColor: AppColors.gradientColor5,
                            child: Icon(
                              Icons.tab,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('245 MB'), Text('Ukomo 1 Day')],
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

class OfferBoxes extends StatelessWidget {
  final String title;
  final IconData icon;
  const OfferBoxes({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        flex: 2,
        child: Text(
          title,
          softWrap: true,
          style: TextStyle(color: Colors.white),
        ),
      ),
      Expanded(
        flex: 1,
        child: CircleAvatar(
          backgroundColor: Colors.white60,
          radius: 45,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}

class MoreDetails extends StatelessWidget {
  final String title1;
  final String title2;
  final Color? color;
  const MoreDetails({
    Key? key,
    required this.title1,
    required this.title2,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: TextStyle(
              letterSpacing: 0.5,
              color: color ?? Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp),
        ),
        Text(
          title2,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.blueColor,
              fontSize: 12.sp),
        ),
      ],
    );
  }
}

class MySliverAppBar extends StatelessWidget {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    return TopPart(height: expandedHeight);
  }
}

class PromoBox extends StatelessWidget {
  final String imageUrl;
  const PromoBox({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Theme.of(context).primaryColor,
            image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
