import 'package:flutter/material.dart';
import 'package:name_routing/page/second_page.dart';

class First_page extends StatefulWidget {
  static const String routeName = "/";
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  double sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("first page")),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 20,
              label: '${sliderValue.round()}',
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text(
              '${sliderValue.round()}',
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Second_page.routeName,
                      arguments: "hello flutter this is your second page");
                },
                child: Text("go to second page")),
          ],
        ),
      ),
    );
  }
}
