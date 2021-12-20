import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sitemap extends StatefulWidget {
  const Sitemap({Key? key}) : super(key: key);

  @override
  _SitemapState createState() => _SitemapState();
}

class _SitemapState extends State<Sitemap> {
  late bool toogle;
  late bool tooglehome;
  late bool tooglebd;
  late bool toogledd;
  late bool tooglewc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    toogle = false;
    tooglehome = false;
    tooglebd = false;
    toogledd = false;
    tooglewc = false;
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color(0xff223E98),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.width! * 1,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: SizeConfig.height! * 2.5,
                      ),
                    ),
                    SizedBox(width: SizeConfig.width! * 1,),
                    Text(
                      "Site Map",
                      style: TextStyle(
                          fontSize: SizeConfig.height! * 2.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if (toogle == true) {
                                  setState(() {
                                    toogle = false;
                                    print(toogle);
                                  });
                                } else {
                                  setState(() {
                                    toogle = true;
                                    print(toogle);
                                  });
                                }
                              },
                              child: Icon(
                                Icons.chevron_right_outlined,
                                size: SizeConfig.height! * 3.5,
                                color: Color(0xff223E98),
                              )),
                          SizedBox(
                            width: SizeConfig.width! * 3,
                          ),
                          AnimatedSizeAndFade(
                            child: toogle == true
                                ? Container(
                                    alignment: Alignment.centerLeft,
                                    height: SizeConfig.height! * 10,
                                    width: SizeConfig.width! * 25,
                                    child: Text(
                                      "E-PANCHAYAT",
                                      style: TextStyle(
                                          fontSize:
                                          SizeConfig.height! * 2.5,
                                          color: Colors.black,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                : Container(
                                    alignment: Alignment.center,
                                    height: SizeConfig.height! * 60,
                                    width: SizeConfig.width! * 30,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 0.2, color: Colors.grey)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 15),
                                            child: Text(
                                              "E-PANCHAYAT",
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.height! * 2.5,
                                                  color: Colors.black,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    if (tooglehome == true) {
                                                      setState(() {
                                                        tooglehome = false;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        tooglehome = true;
                                                      });
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .chevron_right_outlined,
                                                    size: SizeConfig.height! *
                                                        3.5,
                                                    color: Color(0xff223E98),
                                                  )),
                                              SizedBox(
                                                width: SizeConfig.width! * 1,
                                              ),
                                              AnimatedSizeAndFade(
                                                child: tooglehome
                                                    ? Text(
                                                        "Home",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontSize: SizeConfig
                                                                    .height! *
                                                                2,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      )
                                                    : Container(
                                                        height:
                                                            SizeConfig.height! *
                                                                40,
                                                        width:
                                                            SizeConfig.width! *
                                                                25,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      if (tooglebd ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          tooglebd =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          tooglebd =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .chevron_right_outlined,
                                                                      size: SizeConfig
                                                                              .height! *
                                                                          3.5,
                                                                      color: Color(
                                                                          0xff223E98),
                                                                    )),
                                                                SizedBox(
                                                                  width: SizeConfig
                                                                          .width! *
                                                                      1,
                                                                ),
                                                                AnimatedSizeAndFade(
                                                                  child: tooglebd
                                                                      ? Text(
                                                                    "BIRTH DETAILS",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        SizeConfig.height! * 2.1,
                                                                        color: Colors.black,
                                                                        letterSpacing: 1,
                                                                        fontWeight: FontWeight.w500),
                                                                  )
                                                                      : Container(
                                                                          height:
                                                                              SizeConfig.height! * 10,
                                                                          width:
                                                                              SizeConfig.width! * 20,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.only(right: 15),
                                                                                  child: Text(
                                                                                    "BIRTH DETAILS",
                                                                                    style: TextStyle(
                                                                                        fontSize:
                                                                                        SizeConfig.height! * 2.1,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 1,
                                                                                        fontWeight: FontWeight.w500),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Apply Birth Registration",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Generate Birth Details",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                  fadeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              300),
                                                                  sizeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              600),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      if (toogledd ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          toogledd =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          toogledd =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .chevron_right_outlined,
                                                                      size: SizeConfig
                                                                              .height! *
                                                                          3.5,
                                                                      color: Color(
                                                                          0xff223E98),
                                                                    )),
                                                                SizedBox(
                                                                  width: SizeConfig
                                                                          .width! *
                                                                      1,
                                                                ),
                                                                AnimatedSizeAndFade(
                                                                  child: toogledd
                                                                      ? Text(
                                                                    "DEATH DETAILS",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        SizeConfig.height! * 2.1,
                                                                        color: Colors.black,
                                                                        letterSpacing: 1,
                                                                        fontWeight: FontWeight.w500),
                                                                  )
                                                                      : Container(
                                                                          height: SizeConfig.height! * 12,
                                                                          width: SizeConfig.width! * 20,
                                                                          child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.only(right: 15),
                                                                                  child: Text(
                                                                                    "DEATH DETAILS",
                                                                                    style: TextStyle(
                                                                                        fontSize:
                                                                                        SizeConfig.height! * 2.1,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 1,
                                                                                        fontWeight: FontWeight.w500),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Apply Death Registration",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Generate Death Details",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Property Tax - Tax Calculator",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )),
                                                                  fadeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              300),
                                                                  sizeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              600),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      if (tooglewc ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          tooglewc =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          tooglewc =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .chevron_right_outlined,
                                                                      size: SizeConfig
                                                                              .height! *
                                                                          3.5,
                                                                      color: Color(
                                                                          0xff223E98),
                                                                    )),
                                                                SizedBox(
                                                                  width: SizeConfig
                                                                          .width! *
                                                                      1,
                                                                ),
                                                                AnimatedSizeAndFade(
                                                                  child: tooglewc
                                                                      ? Text(
                                                                    "WATER CHARGES",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        SizeConfig.height! * 2.1,
                                                                        color: Colors.black,
                                                                        letterSpacing: 1,
                                                                        fontWeight: FontWeight.w500),
                                                                  )
                                                                      : Container(
                                                                          height: SizeConfig.height! * 18,
                                                                          width: SizeConfig.width! * 20,
                                                                          child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.only(right: 15),
                                                                                  child: Text(
                                                                                    "WATER CHARGES",
                                                                                    style: TextStyle(
                                                                                        fontSize:
                                                                                        SizeConfig.height! * 2.1,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 1,
                                                                                        fontWeight: FontWeight.w500),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Apply New Water Connection",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Track New Water Connection Status",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 View Payment Status",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "📁 Pay Water Charges",
                                                                                  style: TextStyle(fontSize: SizeConfig.height! * 1.4, color: Colors.black, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "DEPARTMENT LOGIN",
                                                                                  style: TextStyle(
                                                                                      fontSize:
                                                                                      SizeConfig.height! * 2.1,
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 1,
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )),
                                                                  fadeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              300),
                                                                  sizeDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              600),
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                fadeDuration: const Duration(
                                                    milliseconds: 300),
                                                sizeDuration: const Duration(
                                                    milliseconds: 600),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_outlined,
                                                size: SizeConfig.height! * 3.5,
                                                color: Color(0xff223E98),
                                              ),
                                              SizedBox(
                                                width: SizeConfig.width! * 1,
                                              ),
                                              AnimatedSizeAndFade(
                                                child: Text(
                                                  "About Us",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize:
                                                          SizeConfig.height! *
                                                              2,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                fadeDuration: const Duration(
                                                    milliseconds: 300),
                                                sizeDuration: const Duration(
                                                    milliseconds: 600),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_outlined,
                                                size: SizeConfig.height! * 3.5,
                                                color: Color(0xff223E98),
                                              ),
                                              SizedBox(
                                                width: SizeConfig.width! * 1,
                                              ),
                                              AnimatedSizeAndFade(
                                                child: Text(
                                                  "Terms And Conditions",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize:
                                                          SizeConfig.height! *
                                                              2,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                fadeDuration: const Duration(
                                                    milliseconds: 300),
                                                sizeDuration: const Duration(
                                                    milliseconds: 600),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_outlined,
                                                size: SizeConfig.height! * 3.5,
                                                color: Color(0xff223E98),
                                              ),
                                              SizedBox(
                                                width: SizeConfig.width! * 1,
                                              ),
                                              AnimatedSizeAndFade(
                                                child: Text(
                                                  "Contact Us",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize:
                                                          SizeConfig.height! *
                                                              2,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                fadeDuration: const Duration(
                                                    milliseconds: 300),
                                                sizeDuration: const Duration(
                                                    milliseconds: 600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            fadeDuration: const Duration(milliseconds: 300),
                            sizeDuration: const Duration(milliseconds: 600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: SizeConfig.height! * 65,
                      width: SizeConfig.width! * 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: AssetImage("sitemap.jpg"),
                              fit: BoxFit.contain)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
