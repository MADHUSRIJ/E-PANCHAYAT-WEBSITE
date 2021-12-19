import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';

class GenerateBirth extends StatefulWidget {
  const GenerateBirth({Key? key}) : super(key: key);

  @override
  _GenerateBirthState createState() => _GenerateBirthState();
}

class _GenerateBirthState extends State<GenerateBirth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Container(
                height: SizeConfig.height!*75,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade200)),
              )),
        ));
  }
}
