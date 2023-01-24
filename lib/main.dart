import 'package:airtelmoney_ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.red));
    return MaterialApp(
      navigatorKey: NavigationService.instance.navigationKey,
      debugShowCheckedModeBanner: false,
      title: 'Airtel-Money UI',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}