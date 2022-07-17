import 'package:flutter/material.dart';

import '../models/bannerCarousel.dart';
import '../models/features.dart';

class DataFeatures {
  static List<Features> dataFeatureID = [
    Features(
      gambar: "assets/images/prabayar.png", 
      judulkecil: "Telkomsel PraBayar",
      judulbesar: "Satu produk, beragam pilihan paket", 
      deskripsi: "Menawarkan pilihan paket yang dapat disesuaikan untuk gaya hidup digital dengan mudah, fleksibel, dan tanpa batasan.", 
      buttonTeks: "Selengkapnya", 
      posisi: "kiri",
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    Features(
      gambar: "assets/images/postpaid.png", 
      judulkecil: "Telkomsel Halo",
      judulbesar: "Katakan Halo pada layanan serba mudah", 
      deskripsi: "Nikmati berbagai kemudahan yang didesain khusus untuk Anda mulai dari pilih paket, atur tagihan, hingga pembayaran.", 
      buttonTeks: "Selengkapnya", 
      posisi: "kanan",
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    Features(
      gambar: "assets/images/byU.png", 
      judulkecil: "by.U",
      judulbesar: "Bebas Internetan #SemuanyaSemaunya", 
      deskripsi: "Pake by.U kartu internet serba digital dengan Sinyal Nomor 1 Telkomsel. Bebas bikin paket internet dan nomor HP loh!", 
      buttonTeks: "Selengkapnya", 
      posisi: "kiri",
      warnaBackground: Colors.orange,),




  ];

  static List<Features> dataFeatureEN = [
    Features(
      gambar: "assets/images/prabayar.png", 
      judulkecil: "Telkomsel PraBayar",
      judulbesar: "One product with lots of packages", 
      deskripsi: "Choose the most suitable package catering to your digital lifestyle with ease, flexibility, and without restrictions.", 
      buttonTeks: "Learn more", 
      posisi: "kiri",
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    Features(
      gambar: "assets/images/postpaid.png", 
      judulkecil: "Telkomsel Halo",
      judulbesar: "Say Halo to convenient services", 
      deskripsi: "Enjoy various conveniences tailor-made for your needs, from choosing packages, managing bills, to making payments.", 
      buttonTeks: "Learn more", 
      posisi: "kanan",
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    Features(
      gambar: "assets/images/byU.png", 
      judulkecil: "by.U",
      judulbesar: "Build your own plan #SemuanyaSemaunya", 
      deskripsi: "by.U the all-digital prepaid card that runs in No 1 Telkomsel network. Get the freedom to enjoy by.U the way you want it!", 
      buttonTeks: "Larn more", 
      posisi: "kiri",
      warnaBackground: Colors.orange,),




  ];
}

