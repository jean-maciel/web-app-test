import 'package:flutter/material.dart';
import 'package:new_app/constants/custom_theme.dart';
import 'package:new_app/screens/home_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New App",
      theme: CustomTheme.lightThemeData(context),
      darkTheme: CustomTheme.darkThemeData(),
      home: const HomePage(),
    );
  }
}
