import 'package:flutter/material.dart';

class Sitemap extends StatefulWidget {
  const Sitemap({Key? key}) : super(key: key);

  @override
  _SitemapState createState() => _SitemapState();
}

class _SitemapState extends State<Sitemap> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Site Map"),
          ),
        ));
  }
}

