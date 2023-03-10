import 'package:airtelmoney_ui/pages/toa_pesa.dart';
import 'package:airtelmoney_ui/pages/tuma_pesa.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
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
        backgroundColor: AppColors.primaryColor,
        elevation: 3,
        title: const Text('Nunua Bando'),
      ),
      body: const NunuaBandoWidgets(),
    );
  }
}

class NunuaBandoWidgets extends StatefulWidget {
  const NunuaBandoWidgets({
    Key? key,
  }) : super(key: key);

  @override
  State<NunuaBandoWidgets> createState() => _NunuaBandoWidgetsState();
}

class _NunuaBandoWidgetsState extends State<NunuaBandoWidgets> {
  late TextEditingController? _fieldController;
  bool enableSignIn = false;

  @override
  void initState() {
    super.initState();
    _fieldController = TextEditingController();

    _fieldController?.addListener(() {
      setState(() {
        enableSignIn = (_fieldController?.text.isNotEmpty ?? false);
      });
    });
  }

  @override
  void dispose() {
    _fieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
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
                          controller: _fieldController,
                          title: 'Jina la Mpokeaji au Namba',
                          hintText: '',
                          sufficon: true,
                          icon: Icons.contact_phone,
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CustomButton(
                            tap: () => enableSignIn ? () {} : null,
                            isEnabled: enableSignIn,
                            height: 40,
                            text: 'Endelea',
                            width: MediaQuery.of(context).size.width * 0.3,
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
