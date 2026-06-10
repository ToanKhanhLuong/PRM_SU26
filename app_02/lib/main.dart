import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'MyScaffold.dart';
import 'MyAppBar.dart';
import 'MyText.dart';
import 'MyContainer.dart';
import 'MyColumnAndRow.dart';
import 'MyButton.dart';
import 'MyButton2.dart';
import 'MyButton3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/MyAppBar': (context) => const MyAppBar(),
        '/MyText': (context) => const MyText(),
        '/MyContainer': (context) => const MyContainer(),
        '/MyColumnAndRow': (context) => const MycolumnAndRow(),
        '/MyButton': (context) => const MyButton(),
        '/MyButton2': (context) => const MyButton2(),
        '/MyButton3': (context) => const MyButton3(),
        '/MyScaffold': (context) => const Myscaffold(),
      },
    );
  }
}