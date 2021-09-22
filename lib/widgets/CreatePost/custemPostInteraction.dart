
import 'package:facebooktasks/constants/constants_color.dart';
import 'package:facebooktasks/model/post_model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import 'custemPostInteractionUser.dart';

class  PostInteraction extends StatefulWidget {
  final Post? post;

  PostInteraction({@required this.post});

  @override
  _PostInteractionState createState() => _PostInteractionState();
}

class _PostInteractionState extends State<PostInteraction> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 12,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.red.shade600,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Mdi.heart,
                size: 12,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: Text(
                  "${widget.post!.likes}",
                  style: TextStyle(fontSize: 15),
                )),
            Text(
              "${widget.post!.comments}" + " Comments",
              style: TextStyle(fontSize: 15),
            ),
            widget.post!.shares != null
                ? Text(
              ".  " + "${widget.post!.shares}" + " Shares",
              style: TextStyle(fontSize: 15),
            )
                : SizedBox.shrink(),
          ],
        ),
        Divider(
          color: Colors.grey.shade500,
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PostInteractionUser(
                icon:  Mdi.thumbUpOutline,
                size: 25,
                text: "Like",
                onpressed: () {

                 },
            ),
            PostInteractionUser(
                icon: Mdi.commentOutline,
                size: 25,
                text: "Comment",
                onpressed: () => print("onPressed")),
            PostInteractionUser(
                icon: Mdi.shareOutline,
                size: 25,
                text: "Share",
                onpressed: () => print("onPressed"))
          ],)
      ],

    );
  }
}