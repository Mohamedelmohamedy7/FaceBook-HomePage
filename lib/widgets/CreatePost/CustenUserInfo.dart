
import 'package:facebooktasks/model/post_model/post_model.dart';
import 'package:flutter/material.dart';

import 'custen_Accountval.dart';

class  UsersInfo extends StatelessWidget {
  final Post? post;

  UsersInfo({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustemAccount(
          image: post!.userImage!,
          redious: 25,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${post!.user!}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 18),
              ),
              Row(
                children: [
                  Text(
                    "${post!.dateTime!} .",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                  Icon(
                    Icons.public,
                    size: 20,
                    color: Colors.grey.shade700,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () => print("more_horiz"),
          icon: Icon(Icons.more_horiz),
          alignment: Alignment.topRight,
        ),
      ],
    );
  }
}
