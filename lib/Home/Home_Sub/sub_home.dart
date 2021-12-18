import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';

class HomeSub extends StatefulWidget {
  const HomeSub({Key? key}) : super(key: key);

  @override
  _HomeSubState createState() => _HomeSubState();
}

class _HomeSubState extends State<HomeSub> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.width! * 10,
          vertical: SizeConfig.height! * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.height! * 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: SizeConfig.width! * 0.2,
                          ),
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
                                  child: Text(
                                    "Public Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.size! * 13,
                                        letterSpacing: 0.8),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.width! * 2),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                    height:
                                                        SizeConfig.height! * 13,
                                                    width:
                                                        SizeConfig.height! * 11,
                                                    child: Image.asset(
                                                      "BabyIcon.jpg",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              SizedBox(
                                                height: SizeConfig.height! * 1,
                                              ),
                                              Text(
                                                "Birth Details",
                                                style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.size! * 13,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                    height:
                                                        SizeConfig.height! * 13,
                                                    width:
                                                        SizeConfig.height! * 11,
                                                    child: Image.asset(
                                                      "DeathIcon.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              SizedBox(
                                                height: SizeConfig.height! * 1,
                                              ),
                                              Text(
                                                "Death Details",
                                                style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.size! * 13,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )),
                                      ],
                                    )),
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                    height:
                                                        SizeConfig.height! * 12,
                                                    width:
                                                        SizeConfig.height! * 11,
                                                    child: Image.asset(
                                                      "PT.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              SizedBox(
                                                height: SizeConfig.height! * 2,
                                              ),
                                              Text(
                                                "Property-Tax Calculator",
                                                style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.size! * 13,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                    height:
                                                        SizeConfig.height! * 11,
                                                    width:
                                                        SizeConfig.height! * 13,
                                                    child: Image.asset(
                                                      "WC.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              SizedBox(
                                                height: SizeConfig.height! * 2,
                                              ),
                                              Text(
                                                "Water Charges",
                                                style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.size! * 13,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )),
                                      ],
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
                            horizontal: SizeConfig.width! * 0.2),
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
                                child: Text(
                                  "Department Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "*Only for Office Purpose*",
                                      style: TextStyle(
                                          color: Colors.red.shade600,
                                          fontWeight: FontWeight.w600,
                                          fontSize: SizeConfig.size! * 13,
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.height! * 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: SizeConfig.width! * 1),
                                    height: SizeConfig.height! * 5,
                                    alignment: Alignment.center,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff223E98),
                                        ),
                                      ),
                                      child: TextFormField(
                                        onChanged: (val) {
                                          if (val.isEmpty || val == "") {
                                          } else {}
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty || value == "") {}
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            hintText: "USER ID",
                                            errorMaxLines: 1,
                                            contentPadding: EdgeInsets.only(
                                                bottom:
                                                    SizeConfig.height! * 1.5,
                                                left: SizeConfig.width! * 1,
                                                right: SizeConfig.width! * 1),
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    SizeConfig.height! * 2,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey),
                                            border: InputBorder.none),
                                        style: TextStyle(
                                            fontSize: SizeConfig.height! * 2,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.height! * 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: SizeConfig.width! * 1),
                                    height: SizeConfig.height! * 5,
                                    alignment: Alignment.center,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff223E98),
                                        ),
                                      ),
                                      child: TextFormField(
                                        onChanged: (val) {
                                          if (val.isEmpty || val == "") {
                                          } else {}
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty || value == "") {}
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            hintText: "PASSWORD",
                                            errorMaxLines: 1,
                                            contentPadding: EdgeInsets.only(
                                                bottom:
                                                    SizeConfig.height! * 1.5,
                                                left: SizeConfig.width! * 1,
                                                right: SizeConfig.width! * 1),
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    SizeConfig.height! * 2,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey),
                                            border: InputBorder.none),
                                        style: TextStyle(
                                            fontSize: SizeConfig.height! * 2,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.height! * 5,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: SizeConfig.width! * 5),
                                    height: SizeConfig.height! * 5,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff223E98),
                                    ),
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: SizeConfig.size! * 13,
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: SizeConfig.width! * 0.2),
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
                              child: Text(
                                "About Panchayat",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.size! * 13,
                                    letterSpacing: 0.8),
                              ),
                            ),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.symmetric(
                                  vertical: SizeConfig.height! * 2,
                                  horizontal: SizeConfig.width! * 1),
                              child: Text(
                                "    Tamil Nadu is the first State to have "
                                "introduced a classification in the status "
                                "of local bodies as ‘Town Panchayat’, which was "
                                "planned as a transitional body between Rural and "
                                "Urban Local Bodies. The Town Panchayats adopt well "
                                "devised accounting and auditing procedures and the "
                                "service delivery to the public has been better.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.size! * 13,
                                    letterSpacing: 0.7,
                                    height: 1.6),
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.height! * 0.1),
            child: Container(
              margin: EdgeInsets.only(bottom: SizeConfig.height! * 3),
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
                      child: Text(
                        "தினம் ஒரு திருக்குறள்",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.size! * 13,
                            letterSpacing: 0.8),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        width: SizeConfig.width! * 10,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("valluvar.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.width! * 2,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("அருள்சேர்ந்த  நெஞ்சினார்க்  கில்லை  இருள்சேர்ந்த"
                          "\nஇன்னா  உலகம்  புகல்.", style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.size! * 16,
                              letterSpacing: 0.8,
                            height: 1.6,
                          ),
                          ),
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
          )),
        ],
      ),
    )));
  }
}
