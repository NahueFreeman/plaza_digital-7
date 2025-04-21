import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: double.infinity, color: Colors.black, height: 100),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 200, width: 150, color: Colors.black),
              SizedBox(width: 50),
              Container(height: 200, width: 150, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
