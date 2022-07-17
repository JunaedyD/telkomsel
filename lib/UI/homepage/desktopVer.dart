import 'package:flutter/material.dart';
import 'package:telkomsel/widgets/banner.dart';
import 'package:telkomsel/widgets/entertainment.dart';

import '../../widgets/artikel.dart';
import '../../widgets/carousel_images.dart';
import '../../widgets/dropdownmenu.dart';
import '../../widgets/features.dart';
import '../../widgets/footer.dart';
import '../../widgets/telkomselServices.dart';

class HomePageDeskVer extends StatelessWidget {
  const HomePageDeskVer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            
            BannerTelkom(),
            DropDownTelkomMenu(),



            CarouselBanner(),
            TelkomServices(),
            Features(),
            Entertainment(),
            Articles(),
            FooterTelkom(),

          SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }
}

