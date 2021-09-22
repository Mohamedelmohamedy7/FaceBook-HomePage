import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebooktasks/model/post_model/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../responsive.dart';
import 'CustenUserInfo.dart';
import 'cursol.dart';
import 'custemPostInteraction.dart';

class CustemHomePost extends StatelessWidget {
  final Post? post;

  CustemHomePost({@required this.post});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: height * 0.02,
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: ResponsiveUi.desxktopUi(context)?width * 0.01:
                width * 0.028),
                  child: UsersInfo(post: post),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 12.0,
                      bottom: 10,
                      right: 10,
                      left: ResponsiveUi.desxktopUi(context)?width * 0.01:
                     width * 0.028),
                  child: Text(
                    post!.text!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                post?.image != null
                    ? SizedBox.shrink()
                    : const SizedBox(
                        height: 6.0,
                      ),
              ],
            ),
            post!.imagecarsoul == null
                ? (post?.image != null
                    ? CachedNetworkImage(imageUrl: post!.image!)
                    : SizedBox.shrink())
                : Container(
                    height:  ResponsiveUi.desxktopUi(context)?width * 0.44:
                   height*0.5,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,childAspectRatio: 4/4),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: InkWell(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Cursol(post: post,ind:index))),
                              child: Image.asset(
                            "${post!.imagecarsoul![index]}",
                            fit: BoxFit.fill,
                          )),
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PostInteraction(post: post),
            ),
          ],
        ),
      ),
    );
  }
}
