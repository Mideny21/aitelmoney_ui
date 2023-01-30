import 'package:airtelmoney_ui/pages/tuma_pesa.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:airtelmoney_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class VochaYaKuKwanguaScreen extends StatefulWidget {
  const VochaYaKuKwanguaScreen({super.key});

  @override
  State<VochaYaKuKwanguaScreen> createState() => _VochaYaKuKwanguaScreenState();
}

class _VochaYaKuKwanguaScreenState extends State<VochaYaKuKwanguaScreen> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          elevation: 3,
          title: const Text('Vocha ya Kukwangua'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputForm(
                controller: _fieldController,
                title: 'Tafadhali ingiza namba za Vocha',
                hintText: 'Ingiza Namba ya Vocha',
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  tap: () => enableSignIn ? () {} : null,
                  isEnabled: enableSignIn,
                  height: 40,
                  text: 'Ongeza',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
