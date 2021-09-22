
import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/user_model.dart';
import 'package:facebooktasks/widgets/CreatrStory/custem_TextIcon.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';
import 'custen_Accountval.dart';

class CreatePost extends StatelessWidget {
  final User? user;

  CreatePost({@required this.user});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
     return   Expanded(
       child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left:10, right: 20, top: 10),
        width:ResponsiveUi.desxktopUi(context) ?width* 0.438 :
        width* 1 ,
        child: Column(
          children: [
            Row(
              children: [
                CustemAccount(image: currentUser.image,),
                SizedBox(
                  width: 8,
                ),
                    Container(
                    height:ResponsiveUi.desxktopUi(context) ? height * 0.07:
                    MediaQuery.of(context).size.height * 0.062 ,
                     width:ResponsiveUi.mobileUi(context)?  height* 0.33:500,
                     child: TextField(
                       decoration: InputDecoration(
                        hintText: 'What\'s on your mind?',
                        hintStyle: TextStyle(
                          fontSize: ResponsiveUi.mobileUi(context) ? 17: height * 0.02,
                          color: Colors.black54,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.grey.shade50, width: 10),
                        ),
                      ),
                    ),
                  ),

              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustemTextIcon(
                    size: 29,
                      title: "Live",
                      onpressd: () => print("Live"),
                      color: Colors.red,
                      icon: Icons.video_call),
                  const VerticalDivider(width: 8.0,thickness: 0.5,),
                  CustemTextIcon(
                    size: 25,
                      title: "Photo",
                      onpressd: () => print("Photo"),
                      color: Colors.green,
                      icon: Icons.photo_library_outlined),
                  const VerticalDivider(width: 8.0,thickness: 0.5,),
                  CustemTextIcon(
                    size: 25,
                      title: "Check In",
                      onpressd: () => print("Check In"),
                      color: Colors.red,
                      icon: Icons.location_on_rounded),
                 ],
              ),
            ),
          ],
        ),
    ),
     );
  }


}
