
import 'package:school_flutter_app/utils/app_styles.dart';
import 'package:school_flutter_app/screens/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(

        primaryColor: primary
      ),
      home: const BottomBar(),
    );
  }
}

