import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/changeNotifier/language.dart';
import 'package:telkomsel/widgets/sosmed.dart';

import '../data/features.dart';

class Features extends StatelessWidget {
  const Features({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List _data = DataFeatures.dataFeature;
    List<Widget> dataWidget;
    List data;

    return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Consumer<Language>(
          builder: ((context, bahasa, child) {
            if(bahasa.bahasa == "ID") {
              data = DataFeatures.dataFeatureID;
            } else {
              data = DataFeatures.dataFeatureEN;
            }

            return Column(
              children: [
                Container(
                    // color: Colors.green,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: data.length * 600.0,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: data.toList().map((value) {
                        if (value.posisi == "kiri") {
                          return Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.8 *
                                        0.4,
                                    height: 500,
                                    // color: Colors.blue,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 40,
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 500,
                                            height: 470,
                                            decoration: BoxDecoration(
                                              color: value.warnaBackground,
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(300.0),
                                                bottomRight:
                                                    Radius.circular(300.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 60,
                                          child: Container(
                                            width: 550,
                                            height: 460,
                                            // color: Colors.red,
                                            child: Image.asset(
                                              value.gambar,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: MediaQuery.of(context).size.width *
                                          0.8 *
                                          0.4,
                                      height: 500,
                                      // color: Colors.purple,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(value.judulkecil,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              value.judulbesar,
                                              style: const TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8 *
                                                  0.3,
                                              child: Text(
                                                value.deskripsi,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50.0),
                                            child: SizedBox(
                                              height: 60.0,
                                              width: 180,
                                              child: RaisedButton(
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                  color: Colors.red,
                                                  child: Text(value.buttonTeks,
                                                      style: new TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white)),
                                                  onPressed: () {}),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 100.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8 *
                                          0.4,
                                      height: 500,
                                      // alignment: Alignment.centerRight,
                                      // color: Colors.purple,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(value.judulkecil,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              value.judulbesar,
                                              style: const TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8 *
                                                  0.3,
                                              child: Text(
                                                value.deskripsi,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50.0),
                                            child: SizedBox(
                                              height: 60.0,
                                              width: 180,
                                              child: RaisedButton(
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                  color: Colors.red,
                                                  child: new Text(
                                                      value.buttonTeks,
                                                      style: new TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white)),
                                                  onPressed: () {}),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.8 *
                                        0.4,
                                    height: 500,
                                    // color: Colors.blue,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 500,
                                            height: 470,
                                            decoration: BoxDecoration(
                                              color: value.warnaBackground,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(300.0),
                                                bottomLeft:
                                                    Radius.circular(300.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 40,
                                          child: Container(
                                            width: 550,
                                            height: 460,
                                            // color: Colors.red,
                                            child: Image.asset(
                                              value.gambar,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      }).toList(),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100.0),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.8 * 0.4,
                            height: 700,
                            // alignment: Alignment.centerRight,
                            // color: Colors.purple,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const Text("Telkomsel Halo",
                                //     style: const TextStyle(
                                //         fontSize: 20, color: Colors.black54)),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    bahasa.bahasa == "ID" ? "Lebih untung dengan\nMyTelkomsel" : "Download MyTelkomsel App",
                                    style: const TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.8 *
                                        0.3,
                                    child: Text(
                                      bahasa.bahasa == "ID" ? "Cek kuota, beli paket, tukar Telkomsel Poin, hingga dapat bonus dan promo semua ada dalam genggaman Anda." : "Check quotas, buy packages, exchange Telkomsel Poin, and get many bonuses all in your hands.",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black54),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: SizedBox(
                                    height: 60.0,
                                    width: 180,
                                    child: RaisedButton(
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        color: Colors.red,
                                        child: new Text(bahasa.bahasa == "ID" ? 'Selengkapnya' : "Learn more",
                                            style: new TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white)),
                                        onPressed: () {}),
                                  ),
                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(top: 30.0),
                                //   child: Container(
                                //     width: 400,
                                //     height: 100,
                                //     color: Colors.blue,
                                //   ),
                                // )

                                Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: Sosmed(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8 * 0.4,
                          height: 500,
                          // color: Colors.blue,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                right: 0,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 500,
                                  height: 380,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(300.0),
                                      bottomLeft: Radius.circular(300.0),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 0,
                                child: Container(
                                  width: 550,
                                  height: 460,
                                  // color: Colors.red,
                                  child: Image.asset(
                                    'assets/images/mytelkom.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ));
  }
}


class FeaturesMob extends StatelessWidget {
  const FeaturesMob({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List _data = DataFeatures.dataFeature;
    List<Widget> dataWidget;
    List data;

    return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Consumer<Language>(
          builder: ((context, bahasa, child) {
            if(bahasa.bahasa == "ID") {
              data = DataFeatures.dataFeatureID;
            } else {
              data = DataFeatures.dataFeatureEN;
            }

            return Column(
              children: [
                Container(
                    // color: Colors.green,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: data.length * 1100.0,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: data.toList().map((value) {
                        if (value.posisi == "kiri") {
                          return Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 300.0),
                                    child: Container(
                                      width: 800,
                                      height: 500,
                                      // color: Colors.blue,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 40,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              width: 600,
                                              height: 470,
                                              decoration: BoxDecoration(
                                                color: value.warnaBackground,
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(300.0),
                                                  bottomRight:
                                                      Radius.circular(300.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 60,
                                            child: Container(
                                              width: 550,
                                              height: 460,
                                              // color: Colors.red,
                                              child: Image.asset(
                                                value.gambar,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: MediaQuery.of(context).size.width *
                                          0.8 *
                                          0.4,
                                      height: 500,
                                      // color: Colors.purple,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(value.judulkecil,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              value.judulbesar,
                                              style: const TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8 *
                                                  0.3,
                                              child: Text(
                                                value.deskripsi,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50.0),
                                            child: SizedBox(
                                              height: 60.0,
                                              width: 180,
                                              child: RaisedButton(
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                  color: Colors.red,
                                                  child: Text(value.buttonTeks,
                                                      style: new TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white)),
                                                  onPressed: () {}),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  Container(
                                    width: 800,
                                    height: 500,
                                    // color: Colors.blue,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          right: 100,
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 500,
                                            height: 470,
                                            decoration: BoxDecoration(
                                              color: value.warnaBackground,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(300.0),
                                                bottomLeft:
                                                    Radius.circular(300.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 100,
                                          top: 40,
                                          child: Container(
                                            width: 550,
                                            height: 460,
                                            // color: Colors.red,
                                            child: Image.asset(
                                              value.gambar,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 50.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8 *
                                          0.4,
                                      height: 500,
                                      // alignment: Alignment.centerRight,
                                      // color: Colors.purple,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(value.judulkecil,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              value.judulbesar,
                                              style: const TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8 *
                                                  0.3,
                                              child: Text(
                                                value.deskripsi,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50.0),
                                            child: SizedBox(
                                              height: 60.0,
                                              width: 180,
                                              child: RaisedButton(
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                  color: Colors.red,
                                                  child: new Text(
                                                      value.buttonTeks,
                                                      style: new TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white)),
                                                  onPressed: () {}),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      }).toList(),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Container(
                          width: 800,
                          height: 500,
                          // color: Colors.blue,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                right: 100,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 500,
                                  height: 380,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(300.0),
                                      bottomLeft: Radius.circular(300.0),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 0,
                                child: Container(
                                  width: 550,
                                  height: 460,
                                  // color: Colors.red,
                                  child: Image.asset(
                                    'assets/images/mytelkom.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.8 * 0.4,
                            height: 700,
                            // alignment: Alignment.centerRight,
                            // color: Colors.purple,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const Text("Telkomsel Halo",
                                //     style: const TextStyle(
                                //         fontSize: 20, color: Colors.black54)),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    bahasa.bahasa == "ID" ? "Lebih untung dengan\nMyTelkomsel" : "Download MyTelkomsel App",
                                    style: const TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.8 *
                                        0.3,
                                    child: Text(
                                      bahasa.bahasa == "ID" ? "Cek kuota, beli paket, tukar Telkomsel Poin, hingga dapat bonus dan promo semua ada dalam genggaman Anda." : "Check quotas, buy packages, exchange Telkomsel Poin, and get many bonuses all in your hands.",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black54),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: SizedBox(
                                    height: 60.0,
                                    width: 180,
                                    child: RaisedButton(
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        color: Colors.red,
                                        child: new Text(bahasa.bahasa == "ID" ? 'Selengkapnya' : "Learn more",
                                            style: new TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white)),
                                        onPressed: () {}),
                                  ),
                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(top: 30.0),
                                //   child: Container(
                                //     width: 400,
                                //     height: 100,
                                //     color: Colors.blue,
                                //   ),
                                // )

                                Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: Sosmed(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ));
  }
}
