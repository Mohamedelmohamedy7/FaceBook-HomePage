import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebooktasks/constants/constants_color.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';

class CustemAccount extends StatelessWidget {
  final String? image;
  final bool? active;
   final double ? redious;
  const CustemAccount({@required this.image, this.active=false,this.redious=30});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        CircleAvatar(
          radius: redious,
          backgroundColor: Colors.grey.shade500,
          backgroundImage: CachedNetworkImageProvider(image!),
        ),
        active ==true ? Positioned(
          bottom: 0.0,
          right:ResponsiveUi.mobileUi(context)? 8 :4,
          child: Container(
            height: 12.0,
            width: 12.0,
            decoration: BoxDecoration(
              color: Palette.online,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0
              ),
            ),
          ),
        ):SizedBox(),
      ]

    );
  }
}
