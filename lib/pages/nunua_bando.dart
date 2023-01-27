import 'package:airtelmoney_ui/pages/toa_pesa.dart';
import 'package:airtelmoney_ui/pages/tuma_pesa.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class NunuaBandoScreen extends StatefulWidget {
  const NunuaBandoScreen({super.key});

  @override
  State<NunuaBandoScreen> createState() => _NunuaBandoScreenState();
}

class _NunuaBandoScreenState extends State<NunuaBandoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 3,
        title: const Text('Nunua Bando'),
      ),
      body: const NunuaBandoWidgets(),
    );
  }
}

class NunuaBandoWidgets extends StatelessWidget {
  const NunuaBandoWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
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
                        InputForm(
                          title: 'Jina la Mpokeaji au Namba',
                          hintText: '',
                          sufficon: true,
                          icon: Icons.contact_phone,
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CustomButton(
                            height: 40,
                            tap: () {},
                            text: 'Endelea',
                            width: 80,
                            textColor: Colors.white,
                            color: Colors.blueGrey.shade800,
                          ),
                        )
                      ]),
                )),
          ),
        ],
      ),
    );
  }
}
