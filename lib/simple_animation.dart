import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// Basic example playing a Rive animation from a packaged asset.
class SimpleAssetAnimation extends StatelessWidget {
   SimpleAssetAnimation({Key? key}) : super(key: key);

  List<String> animation = [
    'assets/off_road_car.riv',
    'assets/vehicles.riv',
    // 'assets/acqua_text_out_of_band.riv',
    'assets/coyote.riv',
    'assets/liquid_download.riv',
    'assets/solo_test.riv',
    // 'assets/rocket.riv',
    'assets/rating_animation.riv',
    // 'assets/skills.riv',
    // 'assets/skins_demo.riv',
    // 'assets/lip-sync.riv',
    // 'assets/image_out_of_band.riv',
    // 'assets/hit_test_consume.riv'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
      ),
      body:  Center(
        child:
        CarouselSlider(
          options: CarouselOptions(
            // disableCenter: true,
            aspectRatio: 2/3,
            viewportFraction: 1,
            autoPlay: true,
            // enableInfiniteScroll: false,
            // reverse: false
          ),

          items: animation
              .map((item) => Container(
            child: RiveAnimation.asset(
              item,
              fit: BoxFit.cover,
            ),
            // color: Colors.green,
          ))
              .toList(),
        ),
      ),
    );
  }
}
