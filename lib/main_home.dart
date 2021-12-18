
import 'package:e_panchayat/Home/sub_home.dart';
import 'package:e_panchayat/about_us.dart';
import 'package:e_panchayat/contact_us.dart';
import 'package:e_panchayat/sitemap.dart';
import 'package:e_panchayat/termsandconditions.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: SizeConfig.height! * 17,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("Header.jpg"),fit: BoxFit.fill),
            ),
          ),
          Divider(
            color: Colors.grey.shade200,
            height: SizeConfig.height!*1,
            thickness: 1,
          ),
          DefaultTabController(
              length: 5,
              initialIndex: 0,
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: SizeConfig.width!*2),
                  height: SizeConfig.height!*5,
                  alignment : Alignment.centerLeft,
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: const Color(0xff223E98),
                    labelStyle: TextStyle(
                      fontFamily: 'Grold',
                      fontWeight: FontWeight.w600,
                      wordSpacing: 1.5,
                      fontSize: SizeConfig.size!*12.5,
                    ),
                    onTap: (index){
                      setState(() {
                        _selectedtab = index;
                      });
                    },
                    unselectedLabelStyle: TextStyle(
                      fontFamily: 'Grold',
                      fontWeight: FontWeight.w600,
                      wordSpacing: 1.5,
                      fontSize: SizeConfig.size!*12.5,
                    ),
                    labelPadding: EdgeInsets.symmetric(horizontal: SizeConfig.width!*2),
                    labelColor: const Color(0xff223E98),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(
                        child: TabContainer("Home",0),
                      ),
                      Tab(
                        child: TabContainer("About Us",1),
                      ),
                      Tab(
                        child: TabContainer("Terms & Conditions",2),
                      ),
                      Tab(
                        child: TabContainer("Site Map",3),
                      ),
                      Tab(
                        child: TabContainer("Contact Us",4),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  height: SizeConfig.height!*1,
                  thickness: 1,
                ),
                Container(
                    height: SizeConfig.height!*75, //height of TabBarView
                    child: const TabBarView(children: <Widget>[
                      HomeSub(),
                      About(),
                      TerAndCon(),
                      Sitemap(),
                      Contact(),
                    ]))
              ])),

        ],
      ),
    ));
  }

  Container TabContainer(String tabname,int index) {
    return Container(
      child: Text(tabname,),
    );
  }

}
