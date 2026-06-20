import 'package:app_02/my_widgets_01/MyTextField2.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'my_widgets_01/MyScaffold.dart';
import 'my_widgets_01/MyAppBar.dart';
import 'my_widgets_01/MyText.dart';
import 'my_widgets_01/MyContainer.dart';
import 'my_widgets_01/MyColumnAndRow.dart';
import 'my_widgets_01/MyButton.dart';
import 'my_widgets_01/MyButton2.dart';
import 'my_widgets_01/MyButton3.dart';
import 'my_widgets_01/MyGestures.dart';
import 'my_widgets_01/MyTextField.dart';
import 'my_widgets_01/MyTextField2.dart';
import 'my_widgets_02_from/f2_form_basics.dart';
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
        '/MyGestures': (context) => const MyGestures(),
        '/MyTextField': (context) => const MyTextField(),
        '/MyTextField2': (context) => const MyTextField2(),
        '/FormBasicDemo': (context) => const FormBasicDemo(),
      },
    );
  }
}