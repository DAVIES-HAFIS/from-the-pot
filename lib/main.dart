
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:from_thepot_app/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RockHero',
          home: Scaffold(
            body: SplashScreen(),

          ),
        );
      },
    );
  }
}
