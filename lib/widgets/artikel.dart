import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/changeNotifier/language.dart';
import 'package:telkomsel/onHover.dart';

import '../data/articles.dart';

class Articles extends StatelessWidget {
  const Articles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _data = DataArticles.dataArticles;

    final List<Widget> articleSliders = _data.map((item) {
      return OnHover(builder: ((isHovered) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: 350, 
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              // topRight: Radius.circular(300.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text(item.tanggal),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(item.tanggal,
                    style:
                        const TextStyle(fontSize: 20, color: Colors.black54)),
              ),
              // Text(item.judul)
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 16, right: 8),
                child: Text(
                  item.judul,
                  maxLines: 3,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 16, right: 8),
                child: Text(
                  '→',
                  // maxLines: 3,
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      }));
    }).toList();

    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 450, //MediaQuery.of(context).size.height * 0.5,
        color: Colors.lightBlue[100],
        child: Consumer<Language>(builder: ((context, bahasa, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text(
                        bahasa.bahasa == "ID"
                            ? "Artikel"
                            : "Our Latest Articles",
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bahasa.bahasa == "ID" ? "Selengkapnya" : "View All",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 300,
                  // color: Colors.red,
                  child: CarouselSlider(
                    items: articleSliders,
                    // carouselController: _controller,
                    options: CarouselOptions(
                        initialPage: 1,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.33,
                        autoPlay: false,
                        enlargeCenterPage: false,
                        aspectRatio: 16 / 4,
                        onPageChanged: (index, reason) {
                          // setState(() {
                          //   _current = index;
                          // });
                        }),
                  ),
                ),
              )
            ],
          );
        })));
  }
}
