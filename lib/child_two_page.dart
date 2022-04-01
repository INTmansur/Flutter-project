import 'package:flutter/material.dart';

class ChildTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Child Two",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.teal[900],
          ),
        ),
      ),
      body: Text("this is the Cild Two page"),
    );
  }
}
