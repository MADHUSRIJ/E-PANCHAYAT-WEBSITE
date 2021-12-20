import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_panchayat/Providers/provider.dart';
import 'package:e_panchayat/Providers/birthrequest.dart';

class GenerateBirth extends StatefulWidget {
  const GenerateBirth({Key? key}) : super(key: key);

  @override
  _GenerateBirthState createState() => _GenerateBirthState();
}

class _GenerateBirthState extends State<GenerateBirth> {
  Future<void> _alertDialogBox(String heading, String error) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              heading,
              style: TextStyle(
                  color: Colors.red.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.size! * 13,
                  letterSpacing: 0.8),
            ),
            content: Container(
              alignment: Alignment.center,
              height: SizeConfig.height! * 10,
              child: Text(
                error,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.size! * 13,
                    letterSpacing: 0.8),
              ),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: SizeConfig.height! * 75,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade200)),
        child: Row(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.width! * 3,
                  vertical: SizeConfig.height! * 5),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("bG.jpg"), fit: BoxFit.fill),
                  color: Colors.white),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig.height! * 22,
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
                                  context.read<provider>().set_page("10");
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
                                "BIRTH CERTIFICATE",
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
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(
                            vertical: SizeConfig.height! * 2,
                            horizontal: SizeConfig.width! * 3),
                        height: SizeConfig.height! * 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                              text: "* ",
                                              style: TextStyle(
                                                  color: Colors.red.shade600,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize:
                                                      SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Email",
                                                    style: TextStyle(
                                                        color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizeConfig.width! * 0),
                                          height: SizeConfig.height! * 5,
                                          alignment: Alignment.center,
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0.5,
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                            child: TextFormField(
                                              onChanged: (val) {
                                                if (val.isEmpty || val == "") {
                                                } else {
                                                  context
                                                      .read<BirthReq>()
                                                      .set_email(val);
                                                }
                                              },
                                              decoration: InputDecoration(
                                                  hintText: "",
                                                  errorMaxLines: 1,
                                                  contentPadding: EdgeInsets
                                                      .only(
                                                          bottom: SizeConfig
                                                                  .height! *
                                                              1.5,
                                                          left: SizeConfig
                                                                  .width! *
                                                              1,
                                                          right:
                                                              SizeConfig
                                                                      .width! *
                                                                  1),
                                                  hintStyle: TextStyle(
                                                      fontSize:
                                                          SizeConfig
                                                                  .height! *
                                                              2,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.grey),
                                                  border: InputBorder.none),
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.height! * 2,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                              text: "* ",
                                              style: TextStyle(
                                                  color: Colors.red.shade600,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize:
                                                      SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Child's Name",
                                                    style: TextStyle(
                                                        color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizeConfig.width! * 0),
                                          height: SizeConfig.height! * 5,
                                          alignment: Alignment.center,
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0.5,
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                            child: TextFormField(
                                              onChanged: (val) {
                                                if (val.isEmpty || val == "") {
                                                } else {
                                                  context
                                                      .read<BirthReq>()
                                                      .set_cname(val);
                                                }
                                              },
                                              decoration: InputDecoration(
                                                  hintText: "",
                                                  errorMaxLines: 1,
                                                  contentPadding: EdgeInsets
                                                      .only(
                                                          bottom: SizeConfig
                                                                  .height! *
                                                              1.5,
                                                          left: SizeConfig
                                                                  .width! *
                                                              1,
                                                          right:
                                                              SizeConfig
                                                                      .width! *
                                                                  1),
                                                  hintStyle: TextStyle(
                                                      fontSize:
                                                          SizeConfig
                                                                  .height! *
                                                              2,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.grey),
                                                  border: InputBorder.none),
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.height! * 2,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<BirthReq>().get_data().whenComplete(() =>
                              Provider.of<BirthReq>(context, listen: false)
                                          .Dob ==
                                      ""
                                  ? _alertDialogBox("", "No data found. Check the given datas and try agaim")
                                  : context.read<provider>().set_page("13"));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.width! * 12),
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
                      )
                    ],
                  ),
                )),
          ],
        ),
      )),
    ));
  }
}
