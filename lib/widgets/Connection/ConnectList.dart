
 import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CreatePost/custen_Accountval.dart';

class ConnectList extends StatelessWidget {
  final List<User>? UserConnect;

  const ConnectList({@required this.UserConnect});

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                "Contacts",
                style: TextStyle(

                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                final User user = userDataList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      CustemAccount(
                        image: user.image,
                        redious: 20,
                        active: true,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "${user.name}",
                        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
              padding: EdgeInsets.symmetric(vertical: 10),
              itemCount: userDataList.length,
            ),
          )
        ],
      ),
    );
  }
}
