import 'package:flutter/material.dart';

class User{
  final String ? name;
  final String?  image;
  final bool ? isActivited;
  final List<String>  ? imageCarsoul;
  User({@required this.name,@required this.image,this.isActivited,this.imageCarsoul});
}