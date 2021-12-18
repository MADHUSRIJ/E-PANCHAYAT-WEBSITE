import 'package:e_panchayat/Home/main_home.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Helper(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Helper extends StatefulWidget {
  const Helper({Key? key}) : super(key: key);

  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Home();
  }
}

