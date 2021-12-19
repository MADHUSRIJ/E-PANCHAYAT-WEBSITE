import 'package:e_panchayat/Home/Birth_Details/birth_home.dart';
import 'package:e_panchayat/Home/sub_home.dart';
import 'package:e_panchayat/provider.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class directory extends StatefulWidget {
  const directory({Key? key}) : super(key: key);

  @override
  _directoryState createState() => _directoryState();
}

class _directoryState extends State<directory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.width! * 10,
              vertical: SizeConfig.height! * 0.1),
          child: context.watch<provider>().Page == "0"
              ? HomeSub()
              : context.watch<provider>().Page == "10"
                  ? BirthHome()
                  : const Center(
                      child: Text("Dummy"),
                    )),
    ));
  }
}
