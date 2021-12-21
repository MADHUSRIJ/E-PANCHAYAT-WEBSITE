import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_panchayat/Providers/provider.dart';
import 'package:e_panchayat/sizeconfig.dart';

class Dept_login extends StatefulWidget {
  const Dept_login({Key? key}) : super(key: key);

  @override
  _Dept_loginState createState() => _Dept_loginState();
}

class _Dept_loginState extends State<Dept_login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
          body:Center(
            child:Row(
              children: [
                Expanded(
                  flex:2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.height! * 18,
                        horizontal: SizeConfig.width! * 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade200,
                        )),
                  )
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.width! * 3,
                          vertical: SizeConfig.height! * 5),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("bose.png"), fit: BoxFit.fill),
                          color: Colors.white
                      ),
                      child:Column(
                        children: [
                          Container(
                            height: SizeConfig.height! * 5,
                            decoration: const BoxDecoration(
                              color: Color(0xff223E98),
                            ),
                            // alignment: Alignment.centerLeft,
                          )
                        ],
                      )

                    ),

                  )
                ),

              ],
            )
          )
        ));
  }
}
