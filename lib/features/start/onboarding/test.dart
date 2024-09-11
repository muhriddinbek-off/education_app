import 'package:bumen/common/extensions/text_extensions.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int phone = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                phone = phone + 1;
              });
            },
            child: "Tap here".s(16),
          ),
        ],
      ),
    );
  }
}
