import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/tab_title.dart';
import '../widgets/tabs.dart';
import '../widgets/top_tabs.dart';

class TumaPesaScreen extends StatefulWidget {
  const TumaPesaScreen({super.key});

  @override
  State<TumaPesaScreen> createState() => _TumaPesaScreenState();
}

class _TumaPesaScreenState extends State<TumaPesaScreen>
    with SingleTickerProviderStateMixin {
  final _mtuController = PageController();
  final _pageController = PageController();

  late TabController _tabController;
  int tabsindex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      if (_tabController.index != _pageController.page!.round()) {
        _pageController.animateToPage(_tabController.index,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _mtuController.dispose();
    _pageController.dispose();
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
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              ...TabbedConstants.sendTabs.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: TabTitleWidget(
                                    onTap: () {
                                      setState(() {
                                        tabsindex = e.index;
                                        _mtuController.animateToPage(tabsindex,
                                            duration: const Duration(
                                                milliseconds: 100),
                                            curve: Curves.ease);
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
                                controller: _mtuController,
                                children: <Widget>[
                                  Container(color: Colors.green),
                                  Container(color: Colors.red)
                                ]),
                          )
                        ]),
                    Container(color: Colors.yellow)
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
