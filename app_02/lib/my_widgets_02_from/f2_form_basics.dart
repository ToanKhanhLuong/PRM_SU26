import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget{
  const FormBasicDemo({super.key});

  @override
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Basic Demo"),
      ),
    );
  }
}