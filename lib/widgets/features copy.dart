import 'package:flutter/material.dart';
import 'package:telkomsel/widgets/sosmed.dart';

class Features extends StatelessWidget {
  const Features({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  
                  width: MediaQuery.of(context).size.width * 0.8 * 0.4,
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
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 28, 4, 89),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(300.0),
                              bottomRight: Radius.circular(300.0),
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
                            'assets/images/prabayar.png',
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
                    width: MediaQuery.of(context).size.width * 0.8 * 0.4,
                    height: 500,
                    // color: Colors.purple,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Telkomsel PraBayar",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black54)),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Satu Produk, beragam\npilihan paket",
                            style: const TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8 * 0.3,
                            child: const Text(
                              "Menawarkan pilihan paket yang dapat disesuaikan untuk gaya hidup digital dengan mudah, fleksibel, dan tanpa batasan.",
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
                                child: new Text('Selengkapnya',
                                    style: new TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
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

          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Container(
                      
                      width: MediaQuery.of(context).size.width * 0.8 * 0.4,
                      height: 500,
                      // alignment: Alignment.centerRight,
                      // color: Colors.purple,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Telkomsel Halo",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black54)),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Katakan Halo pada layanan\nserba mudah",
                              style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8 * 0.3,
                              child: const Text(
                                "Nikmati berbagai kemudahan yang didesain khusus untuk Anda mulai dari pilih paket, atur tagihan, hingga pembayaran.",
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
                                  child: new Text('Selengkapnya',
                                      style: new TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  onPressed: () {}),
                            ),
                          )
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
                          top: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: 500,
                            height: 470,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 28, 4, 89),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300.0),
                                bottomLeft: Radius.circular(300.0),
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
                              'assets/images/postpaid.png',
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
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    
                    width: MediaQuery.of(context).size.width * 0.8 * 0.4,
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
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(300.0),
                                bottomRight: Radius.circular(300.0),
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
                              'assets/images/byU.png',
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
                      width: MediaQuery.of(context).size.width * 0.8 * 0.4,
                      height: 500,
                      // color: Colors.purple,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("by.U",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black54)),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Bebas Internetan\n#SemuanyaSemaunya",
                              style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8 * 0.3,
                              child: const Text(
                                "Pake by.U kartu internet serba digital dengan Sinyal Nomor 1 Telkomsel. Bebas bikin paket internet dan nomor HP loh!",
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
                                  child: new Text('Selengkapnya',
                                      style: new TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
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
          ),

           Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Container(
                      
                      width: MediaQuery.of(context).size.width * 0.8 * 0.4,
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
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Lebih untung dengan\nMyTelkomsel",
                              style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8 * 0.3,
                              child: const Text(
                                "Cek kuota, beli paket, tukar Telkomsel Poin, hingga dapat bonus dan promo semua ada dalam genggaman Anda.",
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
                                      borderRadius: BorderRadius.circular(30.0)),
                                  color: Colors.red,
                                  child: new Text('Selengkapnya',
                                      style: new TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
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
        ]),

       
      ),
    );
  }
}

