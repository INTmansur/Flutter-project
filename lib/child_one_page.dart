import 'package:flutter/material.dart';

class ChildOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Child One",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.teal[900],
          ),
        ),
      ),
      body: Text("this is the Cild One page"),
    );
  }
}
