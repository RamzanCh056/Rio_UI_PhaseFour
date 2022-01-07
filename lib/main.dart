import 'package:flutter/material.dart';
import 'package:rio_ui_screens/onboarding/onbording.dart';
import 'Phase_one/Splash_screen.dart';
import 'Phase_one/loginoption_page.dart';
import 'Route_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.indigo),
      routes: <String, WidgetBuilder>{
        Splash_Screen: (BuildContext context) => SplashScreen(),
        loginoption_page: (BuildContext context) => const loginoption(),
        Onbording_screen: (BuildContext context) => Onbording(),
      },
      initialRoute: Splash_Screen,
    );
  }
}
