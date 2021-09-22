import 'dart:async';

 import 'package:facebooktasks/constants/constants_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import 'home_screen.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  AnimationController? _controller;
  late final Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeIn,
    );

    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(_scaffoldKey.currentContext!).push(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));

    return Scaffold(
        key:_scaffoldKey,
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.20),
                  child: FadeTransition(
                    opacity: _animation!,
                    child: Icon(
                      Mdi.facebook,
                      color: Palette.facebookBlue,
                      size: 80,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "FACEBOOK",
                        style: TextStyle(
                            color: Palette.facebookBlue,
                            fontSize: 25,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Mdi.facebook,
                          color: Colors.grey.shade700,
                          size: 22,
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Icon(Mdi.facebookMessenger,
                            color: Colors.grey.shade700, size: 20),
                        SizedBox(
                          width: 22,
                        ),
                        Icon(Mdi.instagram,
                            color: Colors.grey.shade700, size: 20),
                        SizedBox(
                          width: 22,
                        ),
                        Icon(Mdi.whatsapp,
                            color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                )
              ]),
        ));
  }
}
