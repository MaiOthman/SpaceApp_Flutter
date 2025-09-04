import 'package:flutter/material.dart';
import 'package:space_app/screens/home_screen.dart';
import 'package:space_app/screens/login_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {LoginScreen.routeName: (context)=>LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }


}