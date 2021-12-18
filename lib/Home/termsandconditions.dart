import 'package:flutter/material.dart';

class TerAndCon extends StatefulWidget {
  const TerAndCon({Key? key}) : super(key: key);

  @override
  _TerAndConState createState() => _TerAndConState();
}

class _TerAndConState extends State<TerAndCon> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Terms and Conditions"),
          ),
        ));
  }
}
