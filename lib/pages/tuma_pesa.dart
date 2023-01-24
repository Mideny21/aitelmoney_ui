import 'package:flutter/material.dart';

import '../utils/colors.dart';

class TumaPesaScreen extends StatefulWidget {
  const TumaPesaScreen({super.key});

  @override
  State<TumaPesaScreen> createState() => _TumaPesaScreenState();
}

class _TumaPesaScreenState extends State<TumaPesaScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late TabController _tabController;
  int tabsindex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 3,
          title: const Text('Tuma Pesa'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kwenda"),
              TabsSection(
                controller: _tabController,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ...MovieTabbedConstants.movieTabs.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: TabTitleWidget(
                        onTap: () {
                          setState(() {
                            tabsindex = e.index;
                            _pageController.animateToPage(tabsindex,
                                duration: const Duration(milliseconds: 80),
                                curve: Curves.easeIn);
                          });
                        },
                        title: e.title,
                        isSelected: e.index == tabsindex,
                      ),
                    );
                  })
                ],
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[
                    Container(color: Colors.red),
                    Container(color: Colors.green)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieTabbedConstants {
  static const List<Tab> movieTabs = [
    Tab(index: 0, title: 'Ndani ya Nchi'),
    Tab(index: 1, title: 'Nje ya Nchi'),
  ];
}

class Tab {
  final int index;
  final String title;

  const Tab({
    required this.index,
    required this.title,
  }) : assert(index >= 0, 'index cannot be negative');
}

class TabTitleWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool isSelected;

  const TabTitleWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(
                color: isSelected ? Colors.red : Colors.transparent,
                width: 5,
              ),
            ),
          ),
          child: Text(
            title, //'popular', 'now', 'soon'
            style: isSelected
                ? Theme.of(context).textTheme.bodyText1
                : Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}

class TabsSection extends StatelessWidget {
  final TabController? controller;

  const TabsSection({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorWeight: 2,
      controller: controller,
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
                  border: Border.all(color: Colors.black),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.person), Text("Mtu")])),
        ),
        Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.person), Text("Mtu")])),
      ],
    );
  }
}
