import 'package:airtelmoney_ui/components/service_panel.dart';
import 'package:flutter/material.dart';

import '../components/top_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              expandedHeight: MediaQuery.of(context).size.height * 0.42,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Mabadiliko",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Tazama zote",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  const ServicePanel(),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, inde) {
                          return PromoBox();
                        }),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, inde) {
                          return PromoBox();
                        }),
                  ),
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

class MySliverAppBar extends StatelessWidget {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    return TopPart(height: expandedHeight);
  }
}

class PromoBox extends StatelessWidget {
  const PromoBox({super.key});

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
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1614167156117-c02f3f9f3088?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
