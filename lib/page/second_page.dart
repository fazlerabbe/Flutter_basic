import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  static const String routeName = '/second';
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  late String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("second page")),
      ),
      body: Center(
        child: Text("msg"),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    print("did change dependencies called");
    // msg = ModalRoute.of(context)!.settings.arguments as String;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
