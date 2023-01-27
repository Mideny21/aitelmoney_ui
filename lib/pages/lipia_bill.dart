import 'package:flutter/material.dart';

import '../data/services.dart';
import '../utils/colors.dart';

class LipiaBillScreen extends StatefulWidget {
  const LipiaBillScreen({super.key});

  @override
  State<LipiaBillScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<LipiaBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 3,
        title: const Text('Lipa Bili'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Material(
              elevation: 3,
              child: TextFormField(
                  decoration: InputDecoration(
                label: Text("Tafuta Wauzaji"),
                fillColor: Colors.white,
                filled: true,
                errorBorder: const UnderlineInputBorder(),
                focusedErrorBorder: const UnderlineInputBorder(),
                contentPadding: const EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(2),
                  borderSide: const BorderSide(color: Color(0xffffdb33)),
                ),
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 16),
                enabledBorder: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(Icons.search, size: 24),
                    onPressed: () {},
                    color: AppColors.primaryColor),
              )),
            ),
            SizedBox(height: 10),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 100,
                    crossAxisCount: 3),
                shrinkWrap: true,
                padding: const EdgeInsets.all(4),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lipiaBili.length,
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
                          child: lipiaBili[index]['icon'],
                        ),
                        // const SizedBox(height: ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(lipiaBili[index]['name'],
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  );
                }))
          ],
        )),
      ),
    );
  }
}
