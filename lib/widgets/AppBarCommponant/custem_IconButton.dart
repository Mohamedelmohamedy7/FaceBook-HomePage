import 'package:flutter/material.dart';

class CustemIconButton extends StatelessWidget {
  final IconData? icon;
  final onpressed;
  final double? size;

  const CustemIconButton({this.icon, this.onpressed,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:
          BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(icon),
        iconSize: size!,
        color: Colors.black,
      ),
    );
  }
}
