import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/data/telkomServices.dart';

import '../changeNotifier/language.dart';

class TelkomServices extends StatelessWidget {
  const TelkomServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [];
    // List serviceTelkom = [
    //   ['assets/images/isipulsa.png', 'Isi Ulang Pulsa'],
    //   ['assets/images/belipaket.png', 'Beli Paket'],
    //   ['assets/images/daftar.png', 'Daftar Telkomsel Halo'],
    //   ['assets/images/undian.png', 'Undi-undi Hepi']
    // ];

    return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Consumer<Language>(builder: (context, bahasa, child) {
          if(bahasa.bahasa == "ID") {
            data = Dataservices.serviceTelkomID;
          } else if(bahasa.bahasa == "EN") {
            data = Dataservices.serviceTelkomEN;
          }
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(bahasa.bahasa == "ID" ? "Yang bisa dilakukan di Telkomsel.com" : "Let us help with some common requests",
                  style: const TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 150,
                    // color: Colors.yellow,
                    alignment: Alignment.topCenter,
                    child: GridView.builder(
                        itemCount: data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 8 / 3),
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      data[index][0],
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Text(data[index][1],
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.black)),
                                  ],
                                ),
                              ),
                              Container(
                                width: index == 3 ? 0 : 1,
                                height: 100,
                                color: Colors.black38,
                              )
                            ],
                          );
                        })),
              )
            ]),
          );
        }));
  }
}
