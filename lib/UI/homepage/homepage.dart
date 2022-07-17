import 'package:flutter/material.dart';
import 'package:telkomsel/UI/homepage/desktopVer.dart';
import 'package:telkomsel/UI/homepage/mobileVer.dart';
import 'package:telkomsel/UI/homepage/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(desktopVer: HomePageDeskVer(), mobileVer: HomePageMobVer(),),
    );
  }
}