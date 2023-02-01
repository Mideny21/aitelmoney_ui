import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:airtelmoney_ui/components/slider.dart';

import '../utils/colors.dart';
import 'home_screen.dart';

class AirtelTVScreen extends StatefulWidget {
  const AirtelTVScreen({super.key});

  @override
  State<AirtelTVScreen> createState() => _AirtelTVScreenState();
}

class _AirtelTVScreenState extends State<AirtelTVScreen> {
  final mustseemovies = [
    'assets/images/niger1.jpg',
    'assets/images/niger2.jpg',
    'assets/images/niger3.jpg',
    'assets/images/niger4.jpg',
    'assets/images/niger6.jpeg'
  ];

  final trendmovies = [
    'assets/images/niger3.jpg',
    'assets/images/niger4.jpg',
    'assets/images/niger1.jpg',
    'assets/images/niger6.jpeg',
    'assets/images/niger2.jpg'
  ];

  final toprratedmovies = [
    'assets/images/niger6.jpeg',
    'assets/images/niger4.jpg',
    'assets/images/niger1.jpg',
    'assets/images/niger2.jpg',
    'assets/images/niger3.jpg',
  ];
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8).r,
        child: ListView(
          children: [
            AdvertisementPanel(),
            SizedBox(height: 15.h),
            MoreDetails(
              title1: 'Must see Movies',
              title2: 'More',
              color: Colors.white,
              secondColor: AppColors.primaryColor,
            ),
            SizedBox(height: 5.h),
            MovieCard(movies: mustseemovies),
            SizedBox(height: 15.h),
            MoreDetails(
              title1: 'Trending Movies',
              title2: 'More',
              color: Colors.white,
              secondColor: AppColors.primaryColor,
            ),
            SizedBox(height: 5.h),
            MovieCard(movies: trendmovies),
            SizedBox(height: 15.h),
            MoreDetails(
              title1: 'Top Rated Movies',
              title2: 'More',
              color: Colors.white,
              secondColor: AppColors.primaryColor,
            ),
            SizedBox(height: 5.h),
            MovieCard(movies: toprratedmovies),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final List<String> movies;
  const MovieCard({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8).r,
      child: SizedBox(
        height: 190.h,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  movies[index],
                  width: 115.w,
                  fit: BoxFit.cover,
                ),
              );
            }),
      ),
    );
  }
}
