import 'package:e_panchayat/Providers/birthrequest.dart';
import 'package:e_panchayat/main_home.dart';
import 'package:e_panchayat/Providers/provider.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:e_panchayat/style/appState.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider<AppStateNotifier>(
    create: (context) => AppStateNotifier(),
    child: const  MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final Future<FirebaseApp> _intialization = Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAadkQPmSzBIpF-SSdA2S9yX-Qb_Z8R2mk",
        messagingSenderId: "559534424969",
        appId: "1:559534424969:web:9b05ea7222183d0de55758",
        projectId: "e-panchayat-aee0b",
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<provider>.value(value: (provider())),
        ChangeNotifierProvider<BirthReq>.value(value: (BirthReq())),
      ],
      child: Consumer<AppStateNotifier>(builder: (context, appState, child) {
        return const MaterialApp(
          home: Helper(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Helper extends StatefulWidget {
  const Helper({Key? key}) : super(key: key);

  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Home();
  }
}

