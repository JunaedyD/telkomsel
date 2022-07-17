import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UI/homepage/desktopVer.dart';
import 'changeNotifier/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => Language(),
          ),
      ],
      child: MaterialApp(
        title: 'Telkomsel',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePageDeskVer(),
        
      ),
    );
  }
}
