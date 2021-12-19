import 'package:e_panchayat/main_home.dart';
import 'package:e_panchayat/provider.dart';
import 'package:e_panchayat/sizeconfig.dart';
import 'package:e_panchayat/style/appState.dart';
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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<provider>.value(value: (provider())),
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

