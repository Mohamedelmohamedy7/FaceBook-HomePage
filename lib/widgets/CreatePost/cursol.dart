import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebooktasks/model/post_model/post_model.dart';

import 'package:flutter/material.dart';

import '../responsive.dart';

class Cursol extends StatelessWidget {
  final Post? post;
  final int? ind;

  const Cursol({@required this.post, this.ind});

  @override
  Widget build(BuildContext context) {
    return ResponsiveUi.desxktopUi(context)
        ? Container(
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                initialPage: ind!,
                reverse: false,
                viewportFraction: 1,
                height: ResponsiveUi.desxktopUi(context)
                    ? MediaQuery.of(context).size.width * 0.8
                    : MediaQuery.of(context).size.height * 0.9,
                enlargeCenterPage: true,
              ),
              items: post!.imagecarsoul!.map((item) {
                return PageView(
                  children: [
                    Image.asset(
                      '$item',
                      fit: BoxFit.contain,
                    ),
                  ],
                );
              }).toList(),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                    ),
                    Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          initialPage: ind!,
                          reverse: false,
                          viewportFraction: 1,
                          height: ResponsiveUi.desxktopUi(context)
                              ? MediaQuery.of(context).size.width * 0.8
                              : MediaQuery.of(context).size.height * 0.9,
                          enlargeCenterPage: true,
                        ),
                        items: post!.imagecarsoul!.map((item) {
                          return PageView(
                            children: [
                              Image.asset(
                                '$item',
                                fit: BoxFit.contain,
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ]),
            )));
  }
}
