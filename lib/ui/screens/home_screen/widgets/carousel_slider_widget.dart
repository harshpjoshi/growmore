import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 200.0,autoPlay: true,viewportFraction: 20),
        items: [
          "https://www.growmore.ac.in/images/ars/gmbanner91.jpg",
          "https://www.growmore.ac.in/images/ars/gmbanner91.jpg",
          "https://www.growmore.ac.in/images/ars/gmbanner91.jpg"
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.network(
                    i,
                    height: 200,
                    fit: BoxFit.fill,
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
