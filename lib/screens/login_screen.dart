import 'package:flutter/material.dart';
import 'package:space_app/colors/app_colors.dart';
import 'package:space_app/elevated_button.dart';

class LoginScreen extends StatelessWidget{
  static String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.black),
      body: SafeArea(child:
      Stack(fit: StackFit.expand,alignment: Alignment.centerLeft, children: [
        Image.asset('assets/images/img.png',fit: BoxFit.fill,)
      , Container( alignment: Alignment.centerLeft,
        child: Text("Explore \n The \n Universe",
          style: TextStyle(fontFamily: 'Inter', fontSize: 48, fontWeight: FontWeight.w900, color: Color(AppColors.white)),
        textAlign: TextAlign.center,
          ),
      ),
       ElevatedButtonDesign(text: 'Explore')
      ],
      )
      ),
    
    );
  }

}