
import 'package:facebooktasks/constants/constants_color.dart';
import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import '../CreatePost/custen_Accountval.dart';

class OptianstList extends StatelessWidget {
  final List<List> _moreOptionsList = [
    [Mdi.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [Mdi.accountMultiple, Colors.cyan, 'Friends'],
    [Mdi.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [Mdi.flag, Colors.orange, 'Pages'],
    [Mdi.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [Mdi.calendarStar, Colors.red, 'Events'],
  ];
  final User? user;

  OptianstList({Key? key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      constraints: BoxConstraints(maxWidth: 280),
      child: ListView.builder(
        itemCount: 1 + _moreOptionsList.length,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: CustemAccount(
                    image: currentUser.image,
                    redious: 20,
                  ),
                ),
                SizedBox(width: 12,),
                Text("${currentUser.name}",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),)
              ]
         
            );
          }
          final List option = _moreOptionsList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _Option(
              icon: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData? icon;

  final Color? color;
  final String? label;

  _Option({@required this.icon, @required this.color, @required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(label),
      child: Row(
        children: [
          Icon(icon, size: 38.0, color: color),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              "$label",
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
