import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:airtelmoney_ui/widgets/top_tabs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_button.dart';

class ToaPesaScreen extends StatefulWidget {
  const ToaPesaScreen({super.key});

  @override
  State<ToaPesaScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<ToaPesaScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();

  late TabController _toaController;
  int tabsindex = 0;
  final List<String> kwaAtm = [
    'Umojo Switch ATM',
    'CRDB ATM',
    'EQUITY ATM',
    'BOA ATM'
  ];

  @override
  void initState() {
    super.initState();
    _toaController = TabController(vsync: this, length: 2);
    _toaController.addListener(() {
      if (_toaController.index != _pageController.page!.round()) {
        _pageController.animateToPage(_toaController.index,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _toaController.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 3,
        title: const Text('Toa Pesa'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TabsSection(
              fontsize: 10.sp,
              icon: [Icons.earbuds, Icons.wallet_travel],
              title: ['Kutoka kwa Wakala', 'Kutoka kwa ATM'],
              controller: _toaController),
          SizedBox(height: 10.h),
          Expanded(
            child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: <Widget>[
                  const AgentScreen(),
                  KwaATMScreen(
                      huduma: kwaAtm.map((e) {
                    return ListZahuduma(title: e);
                  }).toList())
                ]),
          )
        ]),
      ),
    );
  }
}

class KwaATMScreen extends StatelessWidget {
  final List<ListZahuduma> huduma;
  const KwaATMScreen({
    Key? key,
    required this.huduma,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // width: double.infinity,
          height: 200.h,
          child: Card(
            elevation: 5,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [...huduma]),
          ),
        ),
      ],
    );
  }
}

class ListZahuduma extends StatelessWidget {
  const ListZahuduma({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black,
      ),
    );
  }
}

class AgentScreen extends StatelessWidget {
  const AgentScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.24,
          child: Card(
              elevation: 5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputFormToa(
                        title: 'Ingiza Kodi ya wakala kwa makini',
                        hintText: 'Enter Agent Code',
                      ),
                      SizedBox(height: 15),
                      CustomButton(
                        height: 40,
                        tap: () {},
                        text: 'Endelea',
                        width: 80,
                        textColor: Colors.white,
                        color: Colors.red,
                      )
                    ]),
              )),
        ),
      ],
    );
  }
}

class InputFormToa extends StatelessWidget {
  final String title;
  final String hintText;
  const InputFormToa({
    Key? key,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(hintText: hintText),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
      ],
    );
  }
}
