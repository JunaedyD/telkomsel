import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telkomsel/changeNotifier/language.dart';
import 'package:telkomsel/data/dropdownBanner.dart';

class DropDownTelkomMenu extends StatelessWidget {
  const DropDownTelkomMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selected = null;
    List layananDigital, pilihanproduk, graparionline;
    
    return Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 30),
        child: Consumer<Language>(builder: (context, bahasa, child) {
          if (bahasa.bahasa == "ID") {
            graparionline = DataDropDown.grapariOnlineID;
            layananDigital = DataDropDown.layananDigitalID;
            pilihanproduk = DataDropDown.pilihanProdukID;
          } else if (bahasa.bahasa == "EN") {
            graparionline = DataDropDown.grapariOnlineEN;
            layananDigital = DataDropDown.layananDigitalEN;
            pilihanproduk = DataDropDown.pilihanProdukEN;
          }

          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(children: [
              Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      child: Image.asset(
                        'assets/images/logotelkomsel.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton(
                                offset: const Offset(-40, 50),
                                onSelected: (value) => _selected.value = value,
                                padding: EdgeInsets.all(30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                                itemBuilder: (context) {
                                  return graparionline
                                      .map(
                                        (value) => PopupMenuItem(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(value),
                                          ),
                                        ),
                                      )
                                      .toList();
                                },
                                // offset: Offset(1, 40),
                                child: Container(
                                  // width: 200,
                                  padding: EdgeInsets.all(8.0),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.brown),
                                  //     borderRadius: BorderRadius.all(Radius.circular(0))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        bahasa.bahasa == "ID"
                                            ? 'GraPARI Online'
                                            : "GraPARI Online",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ), // ${categories[_selected.value]}'),
                                      Icon(Icons.keyboard_arrow_down_sharp),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton(
                                offset: const Offset(0, 50),
                                onSelected: (value) => _selected.value = value,
                                padding: EdgeInsets.all(30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                                itemBuilder: (context) {
                                  return pilihanproduk
                                      .map(
                                        (value) => PopupMenuItem(
                                          value: value,
                                          child: Text(value),
                                        ),
                                      )
                                      .toList();
                                },
                                // offset: Offset(1, 40),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.brown),
                                  //     borderRadius: BorderRadius.all(Radius.circular(0))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        bahasa.bahasa == "ID"
                                            ? 'Pilihan Produk'
                                            : "Product",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ), // ${categories[_selected.value]}'),
                                      Icon(Icons.keyboard_arrow_down_sharp),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton(
                                offset: const Offset(0, 50),
                                onSelected: (value) => _selected.value = value,
                                padding: EdgeInsets.all(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                                itemBuilder: (context) {
                                  return layananDigital
                                      .map(
                                        (value) => PopupMenuItem(
                                          value: value,
                                          child: Text(value),
                                        ),
                                      )
                                      .toList();
                                },
                                // offset: Offset(1, 40),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.brown),
                                  //     borderRadius: BorderRadius.all(Radius.circular(0))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        bahasa.bahasa == "ID"
                                            ? 'Layanan Digital'
                                            : 'Digital Services',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ), // ${categories[_selected.value]}'),
                                      Icon(Icons.keyboard_arrow_down_sharp),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Text(
                                bahasa.bahasa == "ID" ? "Promo" : "Promotions",
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: Text(
                                bahasa.bahasa == "ID" ? "Bantuan" : "Support",
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                              height: 60.0,
                              width: 60,
                              child: RaisedButton(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                          SizedBox(
                            height: 60.0,
                            width: 180,
                            child: RaisedButton(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                color: Colors.red,
                                child: new Text('Sign In',
                                    style: new TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
                                onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        }));
  }
}


class DropDownTelkomMenuMob extends StatelessWidget {
  const DropDownTelkomMenuMob({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selected = null;
    List layananDigital, pilihanproduk, graparionline;
    
    return Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 30),
        child: Consumer<Language>(builder: (context, bahasa, child) {
          if (bahasa.bahasa == "ID") {
            graparionline = DataDropDown.grapariOnlineID;
            layananDigital = DataDropDown.layananDigitalID;
            pilihanproduk = DataDropDown.pilihanProdukID;
          } else if (bahasa.bahasa == "EN") {
            graparionline = DataDropDown.grapariOnlineEN;
            layananDigital = DataDropDown.layananDigitalEN;
            pilihanproduk = DataDropDown.pilihanProdukEN;
          }

          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(children: [
              Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      child: Image.asset(
                        'assets/images/logotelkomsel.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                              height: 60.0,
                              width: 60,
                              child: RaisedButton(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),

                           Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                              height: 60.0,
                              width: 60,
                              child: RaisedButton(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.menu,
                                    size: 30,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        }));
  }
}

