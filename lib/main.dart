import 'package:flutter/material.dart';
import 'package:name_routing/page/first_page.dart';
import 'package:name_routing/page/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: First_page.routeName,
      routes: {
        First_page.routeName: (context) => First_page(),
        Second_page.routeName: (context) => Second_page(),
      },
    );
  }
}
