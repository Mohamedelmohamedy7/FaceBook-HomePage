import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/Splach_screen.dart';
import 'constants/constants_color.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
    DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FaceBook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: SplachScreen(),
    );
  }
}
