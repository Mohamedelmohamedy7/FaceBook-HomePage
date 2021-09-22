
import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/user_model.dart';
import 'package:facebooktasks/widgets/CreatePost/custen_Accountval.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustemCreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue.withOpacity(0.07),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () => print("createRoom"),
              child: Text(
                "Create Room",
                style: TextStyle(
                    color: Colors.blue.shade700,
                    letterSpacing: 1.5,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width*1,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                   final User user = userDataList[index];
                   return CustemAccount(image:user.image,active:user.isActivited, );

                  },
                  separatorBuilder: (ctx, index) => SizedBox(
                        width: 0,
                      ),
                  itemCount: userDataList.length),
            ),
          )
        ],
      ),
    );
  }
}
