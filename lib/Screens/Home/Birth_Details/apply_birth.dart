import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_panchayat/Providers/provider.dart';

class ApplyBirth extends StatefulWidget {
  const ApplyBirth({Key? key}) : super(key: key);

  @override
  _ApplyBirthState createState() => _ApplyBirthState();
}

class _ApplyBirthState extends State<ApplyBirth> {
  Future<void> _alertDialogBox(String error) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Warning!!!",
              style: TextStyle(
                  color: Colors.red.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.size! * 13,
                  letterSpacing: 0.8),
            ),
            content: Container(
              alignment: Alignment.center,
              child: Text(
                error,style: TextStyle(
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
            alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 2),
        height: SizeConfig.height! * 120,
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
                      "APPLY - BIRTH REGISTRATION",
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
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 2),
              child: Text(
                "* All fields are Mandatory *",
                style: TextStyle(
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.size! * 13,
                    letterSpacing: 0.8),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width!*7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
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
                                          fontSize: SizeConfig.size! * 13,
                                          letterSpacing: 0.8),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: "District",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ]),
                                ),
                              )),
                              Expanded(
                                child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.width! * 0),
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
                                        _alertDialogBox("District should not be left empty");
                                      } else {}
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty || value == "") {}
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "",
                                        errorMaxLines: 1,
                                        contentPadding: EdgeInsets.only(
                                            bottom:
                                            SizeConfig.height! * 1.5,
                                            left: SizeConfig.width! * 1,
                                            right: SizeConfig.width! * 1),
                                        hintStyle: TextStyle(
                                            fontSize:
                                            SizeConfig.height! * 2,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                        border: InputBorder.none),
                                    style: TextStyle(
                                        fontSize: SizeConfig.height! * 2,
                                        color: Colors.black),
                                  ),
                                ),
                              ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Town Panchayat",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.width!*3,
                    ),
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Mobile Number",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Email",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: SizeConfig.height!*5,
              margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 2),
              child: Text(
                "Child Information",
                style: TextStyle(
                    color: const Color(0xff223E98),
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.size! * 14,
                    letterSpacing: 0.8),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width!*7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "DOB (DD/MM/YYYY)",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Gender",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.width!*3,
                    ),
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Child's Name",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Identification",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: SizeConfig.height!*5,
              margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 2),
              child: Text(
                "Parents Information",
                style: TextStyle(
                    color: const Color(0xff223E98),
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.size! * 14,
                    letterSpacing: 0.8),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width!*7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Father's Name",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Mother's Name",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Father's Age",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Mother's Age",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.width!*3,
                    ),
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Father's Occupation",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Mother's Occupation",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Permanent Address",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Pincode",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: SizeConfig.height!*5,
              margin: EdgeInsets.symmetric(vertical: SizeConfig.height! * 2),
              child: Text(
                "Birth Type",
                style: TextStyle(
                    color: const Color(0xff223E98),
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.size! * 14,
                    letterSpacing: 0.8),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width!*7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Child's Weight",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Method of Delivery",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.width!*3,
                    ),
                    Expanded(
                      child: Column(
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Religion",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
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
                                                  fontSize: SizeConfig.size! * 13,
                                                  letterSpacing: 0.8),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: "Place of Birth",
                                                    style:
                                                    TextStyle(color: Colors.black))
                                              ]),
                                        ),
                                      )),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.width! * 0),
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
                                            } else {}
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty || value == "") {}
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "",
                                              errorMaxLines: 1,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                  SizeConfig.height! * 1.5,
                                                  left: SizeConfig.width! * 1,
                                                  right: SizeConfig.width! * 1),
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                  SizeConfig.height! * 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              border: InputBorder.none),
                                          style: TextStyle(
                                              fontSize: SizeConfig.height! * 2,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.height! * 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.width! * 30),
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
            SizedBox(
              height: SizeConfig.height! * 3,
            ),
          ],
        ),
      )),
    ));
  }
}
