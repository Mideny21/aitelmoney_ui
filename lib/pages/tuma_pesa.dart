import 'package:flutter/material.dart';

import '../data/services.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
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
              TabsSection(controller: _tabController),
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
                                  const NdaniYaNchi(),
                                  Container(color: Colors.pink)
                                ]),
                          )
                        ]),
                    const KweBenki()
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

class KweBenki extends StatelessWidget {
  const KweBenki({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("BENKI"),
        const SizedBox(height: 8),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 100,
                  crossAxisCount: 3),
              shrinkWrap: true,
              padding: const EdgeInsets.all(4),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: kwendaBenki.length,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          kwendaBenki[index]['icon'],
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(kwendaBenki[index]['name'],
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                );
              })),
        )
      ],
    );
  }
}

class NdaniYaNchi extends StatelessWidget {
  const NdaniYaNchi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MAELEZO YA MPOKEAJI'),
        SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.42,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputForm(
                        title: 'Jina la Mpokeaji au Namba',
                        hintText: 'Weka jina la Mpokeaji au Namba',
                      ),
                      SizedBox(height: 10),
                      InputForm(
                        title: 'Ingiza kiasi',
                        hintText: 'Weka jina la Mpokeaji au Namba',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              InputForm(
                title: 'maoni_ya hiari (Si Lazima)',
                hintText: 'Ingiza maoni',
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.arrow_back), Text("Rudi Nyuma")],
                  ),
                  CustomButton(
                    height: 40,
                    tap: () {},
                    text: 'Endelea',
                    width: 80,
                    textColor: Colors.white,
                    color: Colors.red,
                  )
                ],
              )
            ]),
          )),
        ),
      ],
    );
  }
}

class InputForm extends StatelessWidget {
  final String title;
  final String hintText;
  const InputForm({
    Key? key,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        TextField(
          decoration: InputDecoration(hintText: hintText),
        )
      ],
    );
  }
}
