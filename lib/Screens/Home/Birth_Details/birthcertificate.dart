import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:e_panchayat/Providers/birthrequest.dart';
import 'package:provider/provider.dart';
import 'package:e_panchayat/Providers/provider.dart';

class BirthCerti extends StatefulWidget {
  const BirthCerti({Key? key}) : super(key: key);

  @override
  _BirthCertiState createState() => _BirthCertiState();
}

class _BirthCertiState extends State<BirthCerti> {
  Future<void> _refresh() async {
    Provider.of<BirthReq>(context, listen: false).set_district("");
    Provider.of<BirthReq>(context, listen: false).set_townpanchayat("");
    Provider.of<BirthReq>(context, listen: false).set_mobile("");
    Provider.of<BirthReq>(context, listen: false).set_email("");
    Provider.of<BirthReq>(context, listen: false).set_cname("");
    Provider.of<BirthReq>(context, listen: false).set_gender("");
    Provider.of<BirthReq>(context, listen: false).set_dob("");
    Provider.of<BirthReq>(context, listen: false).set_ide("");
    Provider.of<BirthReq>(context, listen: false).set_mname("");
    Provider.of<BirthReq>(context, listen: false).set_fname("");
    Provider.of<BirthReq>(context, listen: false).set_fage("");
    Provider.of<BirthReq>(context, listen: false).set_mname("");
    Provider.of<BirthReq>(context, listen: false).set_focc("");
    Provider.of<BirthReq>(context, listen: false).set_mocc("");
    Provider.of<BirthReq>(context, listen: false).set_add("");
    Provider.of<BirthReq>(context, listen: false).set_pin("");
    Provider.of<BirthReq>(context, listen: false).set_weight("");
    Provider.of<BirthReq>(context, listen: false).set_delivery("");
    Provider.of<BirthReq>(context, listen: false).set_religion("");
    Provider.of<BirthReq>(context, listen: false).set_place("");
    print("=============== Refresh Complete =============");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: SizeConfig.height! * 140,
        margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 3),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade200)),
        child: Column(
          children: [
            Container(
              height: SizeConfig.height! * 5,
              decoration: const BoxDecoration(
                color: Color(0xff223E98),
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.width! * 1),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _refresh().whenComplete(
                            () => context.read<provider>().set_page("12"));
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
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.size! * 13,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConfig.height! * 120,
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.height! * 4,
                  horizontal: SizeConfig.width! * 13),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade500)),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.height! * 1,
                  ),
                  Container(
                    height: SizeConfig.height! * 18,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.width! * 3,
                              vertical: SizeConfig.height! * 1),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("limage.png"),
                                  fit: BoxFit.fill)),
                        )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(
                                  vertical: SizeConfig.height! * 1),
                              child: Column(
                                children: [
                                  Text(
                                    "Government of Tamil Nadu",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.size! * 13,
                                        letterSpacing: 0.8),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.height! * 1,
                                  ),
                                  Text(
                                    "ERODE CITY MUNICIPAL CORPORATION",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.size! * 13,
                                        letterSpacing: 0.8),
                                  ),
                                  Container(
                                    height: SizeConfig.height! * 8,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "BIRTH CERTIFICATE",
                                      style: TextStyle(
                                          color: const Color(0xff223E98),
                                          fontWeight: FontWeight.w700,
                                          fontSize: SizeConfig.size! * 18,
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.width! * 3,
                              vertical: SizeConfig.height! * 1),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("rimage.png"),
                                  fit: BoxFit.fill)),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 1,
                  ),
                  Container(
                    height: SizeConfig.height! * 5,
                    alignment: Alignment.bottomCenter,
                    margin:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 9),
                    child: Text(
                      "(Issued under Section 12/17 of the Registration of Birth and Death Act,1969 and Rule 8/13 of Tamil Nadu registration of Birth and Death Rules 2022)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.size! * 11,
                          letterSpacing: 0.8),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 1,
                  ),
                  Container(
                    height: SizeConfig.height! * 7,
                    alignment: Alignment.bottomCenter,
                    margin:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 5),
                    child: Text(
                      "This is to certify that the following information has been taken from the original record of Birth which is the register for (Ward) WD-18 of " +
                          context.watch<BirthReq>().District +
                          " City Municipal Corporation of " +
                          context.watch<BirthReq>().District +
                          " District , Tamilnadu State",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.size! * 11,
                          letterSpacing: 0.8),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().ChildName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Gender",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Gender,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Date of Birth (DD/MM/YYYY)",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Dob,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Father's Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Fname,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Mother's Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Mname,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Identification",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Ide,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Religion",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Religion,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Place of Birth",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Place,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Permanent Address",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Address,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Pincode",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.watch<BirthReq>().Pincode,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width! * 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "State",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Tamilnadu",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.size! * 13,
                                      letterSpacing: 0.8),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height! * 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
