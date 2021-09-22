 import 'package:flutter/material.dart';


class  PostInteractionUser extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final String? text;
  final onpressed;

  const  PostInteractionUser(
      {@required this.icon,
        @required this.size,
        @required this.text,
        @required this.onpressed});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      height: height*0.05,
      child: TextButton.icon(
        onPressed: onpressed,
        icon: Icon(icon,color:Colors.grey.shade600,size: size,),
        label: Text("$text",style: TextStyle(fontSize: 17,color: Colors.grey.shade600),),
      ),
    );
  }
}
