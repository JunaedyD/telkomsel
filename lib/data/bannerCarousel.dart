import 'package:flutter/material.dart';

import '../models/bannerCarousel.dart';

class DataBanner {
  static List<BannerCarousel> dataBannerID = [
    BannerCarousel(
      gambar: "assets/images/handphone.png", 
      judul: "Terhebat di Jaringan Terbaik", 
      deskripsi: "Rasakan kehebatan iPhone SE (generasi ke-3) dengan harga bersahabat. Dapatkan penawaran bundling terbaik dari Telkomsel", 
      buttonTeks: "Selengkapnya", 
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    BannerCarousel(
      gambar: "assets/images/liburan.png", 
      judul: "#JelajahDigital Family Hodilday", 
      deskripsi: "Permainan berhadiah untuk liburan lebih seru!", 
      buttonTeks: "Selengkapnya", 
      warnaBackground: Color.fromARGB(255, 254, 0, 34)),

    BannerCarousel(
      gambar: "assets/images/cuan.png", 
      judul: "Cuan Hepi Back to School", 
      deskripsi: "Dapatkan berbagai promo Back to School dengan tukar Telkomsel Poin", 
      buttonTeks: "Tukar Sekarang", 
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    BannerCarousel(
      gambar: "assets/images/filmcarosel.png", 
      judul: "Kau dan Dia 2", 
      deskripsi: "Cerita Persahabatan antara Anneth dan Zara berlanjut. Kali ini datang orang baru yang akan mewarnai hidup mereka. Tonton Selengkapnya di Kau & Dia Season 2!", 
      buttonTeks: "Selengkapnya", 
      warnaBackground: Color.fromARGB(255, 254, 0, 34)),



  ];

  static List<BannerCarousel> dataBannerEN = [
    BannerCarousel(
      gambar: "assets/images/handphone.png", 
      judul: "The new powerfull combination", 
      deskripsi: "Feel the new greatness with the latest iPhone SE(3rd Generation) at the best price. Get the best bundling offers with Telkomsel", 
      buttonTeks: "Details", 
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    BannerCarousel(
      gambar: "assets/images/liburan.png", 
      judul: "#JelajahDigital Family Hodilday", 
      deskripsi: "Fun games with many prizes for the exciting holiday!", 
      buttonTeks: "Details", 
      warnaBackground: Color.fromARGB(255, 254, 0, 34)),

    BannerCarousel(
      gambar: "assets/images/cuan.png", 
      judul: "Cuan Hepi Back to School", 
      deskripsi: "Get Special Back to School promos by redeeming your Telkomsel Poin!", 
      buttonTeks: "Redeem Now", 
      warnaBackground: const Color.fromARGB(255, 28, 4, 89)),

    BannerCarousel(
      gambar: "assets/images/filmcarosel.png", 
      judul: "Kau dan Dia 2", 
      deskripsi: "The Friendship story between Anneth and Zara goes on. A new person comes along and will bring a new spark to their lives. Watch Kau dan Dia Season 2 now!", 
      buttonTeks: "Details", 
      warnaBackground: Color.fromARGB(255, 254, 0, 34)),



  ];

}

