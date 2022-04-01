import 'package:flutter/material.dart';
import "home_page.dart";
import "child_two_page.dart";
import "child_one_page.dart";

void main() {
  runApp(MaterialApp(
      title: "Home page",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/child_one": (context) => ChildOne(),
        "/child_two": (context) => ChildTwo(),
      }));
}
