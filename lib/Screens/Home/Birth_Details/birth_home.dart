
import 'package:provider/provider.dart';
import 'package:e_panchayat/Providers/provider.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';

class BirthHome extends StatefulWidget {
  const BirthHome({Key? key}) : super(key: key);

  @override
  _BirthHomeState createState() => _BirthHomeState();
}

class _BirthHomeState extends State<BirthHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: SizeConfig.height! * 26,
                            horizontal: SizeConfig.width! * 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 1,
                          color: Colors.grey.shade200,
                        )),
                        child: Column(
                          children: [
                            Container(
                              height: SizeConfig.height! * 5,
                              decoration: const BoxDecoration(
                                color: Color(0xff223E98),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.width! * 1),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        context
                                            .read<provider>()
                                            .set_page("0");
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        size: SizeConfig.height! * 3,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.width! * 1,
                                    ),
                                    Text(
                                      "BIRTH DETAILS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: SizeConfig.size! * 13,
                                          letterSpacing: 0.8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.symmetric(
                                      vertical: SizeConfig.height! * 2,
                                      horizontal: SizeConfig.width! * 1),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                context.read<provider>().set_page("11");
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.arrow_right,
                                                    size: SizeConfig.height! * 5,
                                                    color:
                                                        const Color(0xff223E98),
                                                  ),
                                                  SizedBox(
                                                    width: SizeConfig.width! * 1,
                                                  ),
                                                  Text(
                                                    "Apply for Birth Registration",
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize:
                                                            SizeConfig.size! * 15,
                                                        letterSpacing: 0.7,
                                                        height: 1.6),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                context.read<provider>().set_page("12");
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.arrow_right,
                                                    size: SizeConfig.height! * 5,
                                                    color:
                                                        const Color(0xff223E98),
                                                  ),
                                                  SizedBox(
                                                    width: SizeConfig.width! * 1,
                                                  ),
                                                  Text(
                                                    "Generate Birth Certificate",
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize:
                                                            SizeConfig.size! * 15,
                                                        letterSpacing: 0.7,
                                                        height: 1.6),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("b.jpg"),fit: BoxFit.fill)),
                                      ))
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.width! * 3,
                        vertical: SizeConfig.height! * 5),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("r.png"), fit: BoxFit.fill),
                        color: Colors.red),
                  )),
                ],
              ),
            )));
  }
}
