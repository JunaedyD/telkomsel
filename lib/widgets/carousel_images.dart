import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/models/bannerCarousel.dart';

import '../changeNotifier/language.dart';
import '../data/bannerCarousel.dart';

class CarouselBanner extends StatefulWidget {
  const CarouselBanner({Key key}) : super(key: key);

  @override
  State<CarouselBanner> createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  List _data = DataBanner.dataBannerID;
  final CarouselController _controller = CarouselController();
  int _current = 0;
  double _currentPage = 0;
  List datacarousel;

  @override
  Widget build(BuildContext context) {
   

    return Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Consumer<Language>(
          builder: ((context, bahasa, child) {
            if (bahasa.bahasa == "ID") {
              datacarousel = DataBanner.dataBannerID;
            } else if (bahasa.bahasa == "EN") {
              datacarousel = DataBanner.dataBannerEN;
            }
            return Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 700,//MediaQuery.of(context).size.height * 0.73,
              // color: Colors.grey,
              child: Stack(
                children: [
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: Container(
                      // color: Colors.orange,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 680,
                      child: CarouselSlider(
                        items: datacarousel.map((item) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Container(
                              margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        height:
                                            580,
                                        decoration: BoxDecoration(
                                          color: item
                                              .warnaBackground, // Color.fromARGB(255, 254, 0, 34),
                                          borderRadius: const BorderRadius.only(
                                            // topRight: Radius.circular(300.0),
                                            bottomLeft: Radius.circular(100.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              top: 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                // height: 180,
                                                // color: Colors.blue,
                                                child: Text(
                                                  '${item.judul}', //"#JelajahDigital Family Hodilday",
                                                  style: const TextStyle(
                                                      fontSize: 60,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                    item.deskripsi, // "Permainan berhadiah untuk liburan lebih seru!",
                                                    style: const TextStyle(
                                                        fontSize: 22,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30.0),
                                                child: SizedBox(
                                                  height: 60.0,
                                                  width: 180,
                                                  child: RaisedButton(
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                      color: Colors.white,
                                                      child: Text(
                                                          item
                                                              .buttonTeks, //'Selengkapnya',
                                                          style: new TextStyle(
                                                              fontSize: 20.0,
                                                              color:
                                                                  Colors.red)),
                                                      onPressed: () {}),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: 650,
                                          // color: Colors.green,
                                          child: Image.asset(
                                            item.gambar, //'assets/images/liburan.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          );
                        }).toList(),
                        carouselController: _controller,
                        options: CarouselOptions(
                            viewportFraction: 1,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              _current = index;
                              _currentPage = index * 1.0;
                              setState(() {});
                            }),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 620,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 0.0,
                          left: MediaQuery.of(context).size.width * 0.12),
                      child: DotsIndicator(
                        dotsCount: _data.length,
                        position: _current.toDouble(),
                        decorator: DotsDecorator(
                          activeColor: Colors.red,
                          size: const Size.square(9.0),
                          activeSize: const Size(18.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ));
  }
}
