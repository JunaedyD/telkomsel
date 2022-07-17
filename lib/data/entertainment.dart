import 'package:flutter/material.dart';
import 'package:telkomsel/models/entertainment.dart';
import 'package:telkomsel/widgets/entertainment.dart';

import '../models/bannerCarousel.dart';
import '../models/features.dart';

class DataEntertainment {
  static List<Entertainmentmodel> dataEntertainmentID = [
    Entertainmentmodel(
      gambar: "assets/images/nonton.jpg",
      judul: "Kau dan Dia 2",
      deskripsi: "Cerita persahabatan antara Anneth dan Zara berlanjut. Kali ini datang orang baru yang akan mewarnai hidup mereka. Yuk, tonton selengkapnya di Kau & Dia Season 2!",
      buttonTeks: "Selengkapnya"
    ),

    Entertainmentmodel(
      gambar: "assets/images/game.png",
      judul: "Telkomsel Games",
      deskripsi: "Dapatkan informasi paling update seputar games serta voucher untuk memainkan games favorit Anda hanya di Dunia Games.",
      buttonTeks: "Selengkapnya"
    ),

    Entertainmentmodel(
      gambar: "assets/images/music.png",
      judul: "Telkomsel Music",
      deskripsi: "Jalani hari ditemani lagu favorit dari musisi lokal dan mancanegara dengan akses ke Langit Musik, Spotify, dan JOOX.",
      buttonTeks: "Selengkapnya"
    )

  ];

  static List<Entertainmentmodel> dataEntertainmentEN = [
    Entertainmentmodel(
      gambar: "assets/images/nonton.jpg",
      judul: "Kau dan Dia 2",
      deskripsi: "The friendship story between Anneth and Zara goes on. A new person comes along and will bring a new spark to their lives. Watch Kau dan Dia Season 2 now!",
      buttonTeks: "More details"
    ),

    Entertainmentmodel(
      gambar: "assets/images/game.png",
      judul: "Telkomsel Games",
      deskripsi: "Update yourself with the latest information in the gaming world and get vouchers for your favorite games only on Dunia Games.",
      buttonTeks: "More details"
    ),

    Entertainmentmodel(
      gambar: "assets/images/music.png",
      judul: "Telkomsel Music",
      deskripsi: "Make your favorite local and international songs the soundtrack of your life with access to Langit Musik, Spotify, and JOOX.",
      buttonTeks: "More details"
    )

  ];

  
}

