import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/changeNotifier/language.dart';
import 'package:telkomsel/data/entertainment.dart';
import 'package:telkomsel/onHover.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data;

    return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Consumer<Language>(
          builder: (context, bahasa, child) {
            if (bahasa.bahasa == "ID") {
              data = DataEntertainment.dataEntertainmentID;
            } else if (bahasa.bahasa == "EN") {
              data = DataEntertainment.dataEntertainmentEN;
            }
            return Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 80.0, bottom: 50),
                        child: Container(
                          width: 200,
                          height: 5,
                          color: Colors.red,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        data[0].judul,
                        style: const TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8 * 0.6,
                        child: Text(
                          data[0].deskripsi,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 26, color: Colors.black54),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.533,
                            height: MediaQuery.of(context).size.height * 0.6,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            child: OnHover(
                              builder: (isHovered) {
                                return Stack(
                                  children: [
                                    Image.asset(
                                      data[0].gambar,
                                      fit: BoxFit.fill,
                                    ),
                                    Positioned(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.24,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Icon(
                                            Icons.play_circle,
                                            size: 100,
                                            color: Colors.red,
                                          ),
                                        )),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 50.0),
                        //   child: Container(
                        //     height: MediaQuery.of(context).size.width * 0.35,
                        //     width: MediaQuery.of(context).size.width * 0.6,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20),
                        //       image: DecorationImage(
                        //         image: AssetImage(data[0].gambar),
                        //         fit: BoxFit.fill,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "#NonstopNonton",
                            style: const TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.8 * 0.3,
                            child: const Text(
                              "Nikmati tayangan spesial hanya di MAXstream!",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: SizedBox(
                            height: 60.0,
                            width: 180,
                            child: RaisedButton(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                color: Colors.red,
                                child: new Text(data[0].buttonTeks,
                                    style: new TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 500,
                                      height: 300,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: OnHover(
                                        builder: (isHovered) {
                                          return Image.asset(
                                            data[1].gambar,
                                            fit: BoxFit.fill,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      data[1].judul,
                                      style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8 *
                                                0.3,
                                        child: Text(
                                          data[1].deskripsi,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
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
                                            child: new Text(data[1].buttonTeks,
                                                style: new TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white)),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 500,
                                      height: 300,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: OnHover(
                                        builder: (isHovered) {
                                          return Image.asset(
                                            data[2].gambar,
                                            fit: BoxFit.fill,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      data[2].judul,
                                      style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8 *
                                                0.3,
                                        child: Text(
                                          data[2].deskripsi,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
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
                                            child: new Text(data[2].buttonTeks,
                                                style: new TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white)),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ]),
            );
          },
        ));
  }
}

class EntertainmentMob extends StatelessWidget {
  const EntertainmentMob({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data;

    return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Consumer<Language>(
          builder: (context, bahasa, child) {
            if (bahasa.bahasa == "ID") {
              data = DataEntertainment.dataEntertainmentID;
            } else if (bahasa.bahasa == "EN") {
              data = DataEntertainment.dataEntertainmentEN;
            }
            return Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 80.0, bottom: 50),
                        child: Container(
                          width: 200,
                          height: 5,
                          color: Colors.red,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        data[0].judul,
                        style: const TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8 * 0.6,
                        child: Text(
                          data[0].deskripsi,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 26, color: Colors.black54),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            width: 880,
                            height: 500,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            child: OnHover(
                              builder: (isHovered) {
                                return Stack(
                                  children: [
                                    Image.asset(
                                      data[0].gambar,
                                      fit: BoxFit.fill,
                                    ),
                                    Positioned(
                                        left: 400,
                                        top: 220,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Icon(
                                            Icons.play_circle,
                                            size: 100,
                                            color: Colors.red,
                                          ),
                                        )),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "#NonstopNonton",
                            style: const TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            width: 500,
                            alignment: Alignment.center,
                            child: const Text(
                              "Nikmati tayangan spesial hanya di MAXstream!",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: SizedBox(
                            height: 60.0,
                            width: 180,
                            child: RaisedButton(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                color: Colors.red,
                                child: new Text(data[0].buttonTeks,
                                    style: new TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 500,
                                      height: 300,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: OnHover(
                                        builder: (isHovered) {
                                          return Image.asset(
                                            data[1].gambar,
                                            fit: BoxFit.fill,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      data[1].judul,
                                      style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8 *
                                                0.3,
                                        child: Text(
                                          data[1].deskripsi,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
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
                                            child: new Text(data[1].buttonTeks,
                                                style: new TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white)),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 500,
                                      height: 300,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: OnHover(
                                        builder: (isHovered) {
                                          return Image.asset(
                                            data[2].gambar,
                                            fit: BoxFit.fill,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      data[2].judul,
                                      style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8 *
                                                0.3,
                                        child: Text(
                                          data[2].deskripsi,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
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
                                            child: new Text(data[2].buttonTeks,
                                                style: new TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white)),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ]),
            );
          },
        ));
  }
}
