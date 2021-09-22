
import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablat;
  final Widget? desktop;

  const ResponsiveUi(
      {@required this.mobile, this.tablat, @required this.desktop});

  static bool mobileUi(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;


  static bool desxktopUi(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
          MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return desktop!;
      }
      else
        return mobile!;
    });
  }
}
