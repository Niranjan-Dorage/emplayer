import 'package:emplayer/home/artists.dart';
import 'package:flutter/material.dart';

class ArtistsCovers extends StatelessWidget {
  const ArtistsCovers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Artists(
              'https://cdns-images.dzcdn.net/images/artist/53b12da5bd0c860cea563a47c7710925/500x500.jpg',
              'OTILIA'),
          Artists(
              'https://w0.peakpx.com/wallpaper/320/303/HD-wallpaper-xxxtentacion-american-rapper-blue-neon-lights-superstars-creative-blue-backgrounds-american-celebrity-jahseh-dwayne-ricardo-onfroy-music-stars-xxxtentacion.jpg',
              'XXXTENTACION'),
          Artists(
              'https://pyxis.nymag.com/v1/imgs/552/ddf/0023d60a000a6e027925df6517a45d96d3-Dua-Lipa.rsquare.w700.jpg',
              'DUA LIPA'),
          Artists(
              'https://edm.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc0OTYzNDE2NzQ4Nzk1MzMy/illenium-press-shot-1.jpg',
              'ILLENIUM'),
          Artists(
              'https://assets.vogue.in/photos/60a33d18cf2778e00ea7a8f6/master/pass/GettyImages-1196600991.jpg',
              'ARIANA GRANDE'),
          Artists(
              'https://1159025897.rsc.cdn77.org/data/images/full/82166/drake.jpg',
              'DRAKE'),
          Artists(
              'https://assets.vogue.com/photos/5d49e0488a239300084ba453/master/w_2560%2Cc_limit/story%2520(11).jpg',
              'TAYLOR SWIFT'),
          Artists(
              'https://upload.wikimedia.org/wikipedia/commons/e/e0/The_Weeknd_%28253662129%29.jpeg',
              'THE WEEKND'),
        ],
      ),
    );
  }
}
