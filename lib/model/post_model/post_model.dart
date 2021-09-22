import 'package:flutter/material.dart';

import '../user_model.dart';

class Post {
  final String? user;
  final String? text;
  final String ? image;
  final String? dateTime;
  final String? userImage;
  late final int? likes;
  final int? comments;
  final int? shares;
  final List<String>? imagecarsoul;

  Post({
    @required this.user,
    this.text=null,
    this.image = null,
    @required this.dateTime,
    @required this.userImage,
    @required this.likes,
    @required this.comments,
    @required this.shares = null,
    this.imagecarsoul=null,
    });
}
