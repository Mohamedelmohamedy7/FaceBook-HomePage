import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/story_model.dart';
import 'package:facebooktasks/model/user_model.dart';
import 'package:facebooktasks/widgets/CreatePost/custen_Accountval.dart';

import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  final User? user;

  final List<Story>? story;

  const CreateStory({@required this.user, @required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: _Stories(Added: true, user: user),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: _Stories(story: story),
          );
        },
        separatorBuilder: (ctx, index) => SizedBox(),
        itemCount: 1 + story!.length,
      ),
    );
  }
}

class _Stories extends StatelessWidget {
  final User? user;

  final bool? Added;
  final Story? story;

  const _Stories({this.user, this.Added = false, this.story});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Added!
              ? _myStoriew(context)
              : Stack(children: [
                  CachedNetworkImage(
                    imageUrl: story!.imagestory!,
                    width: 110.0,
                    height: MediaQuery.of(context).size.height * 0.30,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 3)),
                        child: CustemAccount(
                          image: story!.imageuser!,
                          redious: 22,
                        ),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 15,
                      child: Container(
                          child: Text(
                        "${story!.name!}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ))),
                ]),
        ),
      ],
    );
  }

  _myStoriew(BuildContext context) {
    return InkWell(
      onTap: () => print("Add Story"),
      child: Container(
        width: 130.0,
        height: double.infinity,
        child: Card(
          elevation: 1,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  child: CachedNetworkImage(
                    imageUrl: currentUser.image!,
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 80,
                      left: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4.0)),
                      child:
                          Icon(Icons.add_circle, color: Colors.blue, size: 50)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22, left: 15),
                child: Text(
                  "Create Story",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
