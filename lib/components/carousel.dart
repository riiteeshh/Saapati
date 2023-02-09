import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Carousel extends StatefulWidget {
  List adsItems;
  Carousel({super.key, required this.adsItems});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 0.8,
            color: Colors.grey[50], //Colors.grey[200],
            child: CarouselSlider.builder(
                itemCount: widget.adsItems.length,
                itemBuilder: ((context, index, realIndex) {
                  return Card(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        // padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          widget.adsItems[index],
                          fit: BoxFit.fill,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  'lib/images/voidu.png',
                                  fit: BoxFit.contain,
                                ));
                          },
                        ),
                      ),
                    ),
                  );
                }),
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndexPage = index;
                      });
                    },
                    pageSnapping: true,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true))),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 10),
          child: new DotsIndicator(
            dotsCount: widget.adsItems.length,
            position: currentIndexPage.toDouble(),
            decorator: DotsDecorator(
              color: Colors.grey.withOpacity(0.5),
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeColor: Colors.blue,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
      ],
    );
  }
}
