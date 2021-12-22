import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class TerAndCon extends StatefulWidget {
  const TerAndCon({Key? key}) : super(key: key);

  @override
  _TerAndConState createState() => _TerAndConState();
}

class _TerAndConState extends State<TerAndCon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(width: 0.2, color: Colors.grey)),
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.width! * 8,
            vertical: SizeConfig.height! * 2),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 1),
                child: Text(
                  "TERMS & CONDITIONS",
                  style: TextStyle(
                      color: Color(0xff223E98),
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.size! * 20,
                      letterSpacing: 0.8),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "1. TERMS : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.size! * 15,
                      letterSpacing: 0.8),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "2. USE LICENSE : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.size! * 15,
                      letterSpacing: 0.8),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       a. Permission is granted to temporarily download one copy of the materials (information or software) on Prematix Software Solution's web site for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       i. Modify or copy the materials",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       ii. Use the materials for any commercial purpose, or for any public display (commercial or non-commercial)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       iii. Attempt to decompile or reverse engineer any software contained on Prematix Software Solution's web site",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       iv. Remove any copyright or other proprietary notations from the materials",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       v. Transfer the materials to another person or 'mirror' the materials on any other server.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 3),
                child: Text(
                  "       b. This license shall automatically terminate if you violate any of these restrictions and may be terminated by Prematix Software Solution at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.size! * 13,
                      letterSpacing: 0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
