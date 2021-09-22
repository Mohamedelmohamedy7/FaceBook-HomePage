
import 'package:facebooktasks/constants/constants_color.dart';
import 'package:facebooktasks/data/posts_data.dart';
import 'package:facebooktasks/model/post_model/post_model.dart';
import 'package:facebooktasks/widgets/AppBarCommponant/custem_IconButton.dart';
import 'package:facebooktasks/widgets/Connection/ConnectList.dart';
import 'package:facebooktasks/widgets/CreatePost/custemHomePosts.dart';
import 'package:facebooktasks/widgets/CreatePost/custem_circleAvatar.dart';
import 'package:facebooktasks/widgets/CreateRoom/custem_Rooms.dart';
import 'package:facebooktasks/widgets/CreatrStory/CreateStory.dart';
import 'package:facebooktasks/widgets/Option/OptianstList.dart';
import 'package:facebooktasks/widgets/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: DefaultTabController(
          length: ResponsiveUi.mobileUi(context) ? 6 : 11,
          child: Scaffold(
            backgroundColor: Colors.grey.shade300,
            appBar: ResponsiveUi.mobileUi(context)
                ? AppBar(
              automaticallyImplyLeading: false,
                    bottom: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black54,
                      tabs: [
                        Tab(
                            icon: Icon(
                          Icons.home_outlined,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.group,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.ondemand_video,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Mdi.facebookGaming,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.notifications_none,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.menu,
                          size: 30,
                        )),
                      ],
                    ),
                    brightness: Brightness.light,
                    backgroundColor: Colors.white,
                      title: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                        "facebook",
                        style: TextStyle(
                          color: Palette.facebookBlue,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                         letterSpacing: -1,
                        ),
                    ),
                      ),
                    elevation: 0,
                    actions: [
                      Row(
                        children: [
                          CustemIconButton(
                            icon: Icons.search_outlined,
                            onpressed: () => print("Search"),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustemIconButton(
                            icon: Mdi.facebookMessenger,
                            onpressed: () => print("Messanger"),
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  )
                : AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: height * 0.1,
              title: Text(
                      "facebook",
                      style: TextStyle(
                        color: Palette.facebookBlue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                      ),
                    ),
                    flexibleSpace: Container(
                      width: ResponsiveUi.mobileUi(context)?double.infinity: width*2,
                      height: ResponsiveUi.mobileUi(context)?double.infinity:width*1,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.2,
                            right: width * 0.2,
                            top: height * 0.01),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Palette.facebookBlue,
                          labelColor: Colors.blue,
                          tabs: [
                            Tab(
                                icon: Icon(
                              Icons.home_outlined,
                              size: 30,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Tab(
                                icon: Icon(
                              Icons.group,
                              size: 30,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Tab(
                                icon: Icon(
                              Icons.ondemand_video,
                              size: 30,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Tab(
                                icon: Icon(
                              Mdi.facebookGaming,
                              size: 30,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Tab(
                                icon: Icon(
                              Icons.notifications_none,
                              size: 30,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Tab(
                                icon: Icon(
                              Icons.menu,
                              size: 30,
                            )),
                          ],
                        ),
                      ),
                    ),
                     brightness: Brightness.light,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    actions: [
                      Row(
                         children: [
                          CustemIconButton(
                            icon: Icons.search_outlined,
                            onpressed: () => print("Search"),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustemIconButton(
                            icon: Mdi.facebookMessenger,
                            onpressed: () => print("Messanger"),
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
            body: ResponsiveUi(
              mobile: _HomeScreenMobile(),
              desktop: _HomeScreenWeb(),
            ),
          ),
        ));
  }
}

class _HomeScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(
            height: 0.2,
            color: Colors.black38,
          ),
          Row(
            children: [
              CreatePost(
                user: currentUser,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: ResponsiveUi.mobileUi(context)?double.infinity: MediaQuery.of(context).size.width*1,
              child: Rooms()
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            child: CreateStory(
              user: currentUser,
              story: stories,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              final Post post = posts[index];
              return CustemHomePost(
                post: post,
              );
            },
            separatorBuilder: (ctx, index) => SizedBox(
              height: 10,
            ),
            itemCount: posts.length,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class _HomeScreenWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(12),
                child: OptianstList(user: currentUser)),
          ),
        ),
        Spacer(),
        Container(
            width: 600,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Divider(
                    height: 0.2,
                    color: Colors.black38,
                  ),
                  Container(
                    color: ResponsiveUi.desxktopUi(context)
                        ? Colors.transparent
                        : Colors.white,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: double.infinity,
                    child: CreateStory(
                      user: currentUser,
                      story: stories,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      CreatePost(
                        user: currentUser,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Rooms(),
                  SizedBox(
                    height: 6,
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      final Post post = posts[index];
                      return CustemHomePost(
                        post: post,
                      );
                    },
                    separatorBuilder: (ctx, index) => SizedBox(
                      height: 10,
                    ),
                    itemCount: posts.length,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
        Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: EdgeInsets.all(12),
                child: ConnectList(UserConnect: userDataList)),
          ),
        ),
      ],
    );
  }
}
