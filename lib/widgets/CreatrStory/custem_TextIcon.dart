import 'package:flutter/material.dart';

class CustemTextIcon extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final  onpressd;
  final Color? color;
  final double ? size;

  const CustemTextIcon({@required this.title,@required this.icon,@required this.color,@required this.onpressd,
  this.size=30
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onpressd,
      icon: Icon(
        icon,
        color: color,
        size: size,
      ),
      label: Text(
        title!,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 15),
      ),
    );
  }
}
