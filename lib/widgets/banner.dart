import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/changeNotifier/language.dart';

class BannerTelkom extends StatelessWidget {
  const BannerTelkom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Language>(builder: (context, bahasa, child) {
      return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 120,
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: Text("PERSONAL"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ENTERPRISE"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: bahasa.bahasa == "ID"
                              ? Text("TENTANG KAMI")
                              : Text("ABOUT US"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("MYTELKOMSEL"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 50, 8),
                          child: bahasa.bahasa == "ID" ? Text("TEMUKAN KAMI") : Text("FIND US"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              bahasa.ChangeIN();
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                    'assets/images/ind.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("ID", style: TextStyle(fontWeight: bahasa.tebalID, fontSize: 18),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("|"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              bahasa.ChangeEN();
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                    'assets/images/en.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("EN", style: TextStyle(fontWeight: bahasa.tebalEN, fontSize: 18),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}


class BannerTelkomMob extends StatelessWidget {
  const BannerTelkomMob({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Language>(builder: (context, bahasa, child) {
      return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 80,
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.fill,
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            //               child: Text("PERSONAL"),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text("ENTERPRISE"),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: bahasa.bahasa == "ID"
            //                   ? Text("TENTANG KAMI")
            //                   : Text("ABOUT US"),
            //             ),
            //           ],
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text("MYTELKOMSEL"),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(8, 8, 50, 8),
            //               child: bahasa.bahasa == "ID" ? Text("TEMUKAN KAMI") : Text("FIND US"),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: InkWell(
            //                 onTap: () {
            //                   bahasa.ChangeIN();
            //                 },
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                       width: 20,
            //                       height: 20,
            //                       child: Image.asset(
            //                         'assets/images/ind.png',
            //                         fit: BoxFit.fill,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(left: 8.0),
            //                       child: Text("ID", style: TextStyle(fontWeight: bahasa.tebalID, fontSize: 18),),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8.0),
            //               child: Text("|"),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: InkWell(
            //                 onTap: () {
            //                   bahasa.ChangeEN();
            //                 },
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                       width: 20,
            //                       height: 20,
            //                       child: Image.asset(
            //                         'assets/images/en.png',
            //                         fit: BoxFit.fill,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(left: 8.0),
            //                       child: Text("EN", style: TextStyle(fontWeight: bahasa.tebalEN, fontSize: 18),),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    });
  }
}

