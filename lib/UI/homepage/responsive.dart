import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileVer;
  final Widget desktopVer;

  ResponsiveLayout({this.mobileVer, this.desktopVer});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if(constraints.maxWidth < 1400) {
        return mobileVer;
      } else {
        return desktopVer;
      }
    }));
  }
}