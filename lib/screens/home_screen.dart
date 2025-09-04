import 'package:flutter/material.dart';
import 'package:space_app/colors/app_colors.dart';
import 'package:space_app/elevated_button.dart';

class HomeScreen extends StatelessWidget{
  static String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.black),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          //TODO gradient to be modified
    decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(AppColors.black), Color(AppColors.white)],
    ),
    ),
          child: Stack(fit: StackFit.expand,alignment: Alignment.bottomCenter,
            children: [Image.asset('assets/images/img_1.png',
            alignment: Alignment.center, fit: BoxFit.fill,),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text('Explore', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(AppColors.white)), textAlign: TextAlign.center,),
            )
          ],),
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(72),
    child: Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
      child: Text("Which planet \n would you like to explore ?",
          style: TextStyle( letterSpacing: -0.03,fontFamily: 'Space Grotesk', color: Color(AppColors.white), fontSize: 24, fontWeight: FontWeight.w700),
      textAlign: TextAlign.left
      ),
    ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image.asset('assets/images/earth.png'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),backgroundColor: Color(AppColors.red),onPressed: (){}, child: Icon(Icons.arrow_back_ios_new, color: Color(AppColors.white),),
          ), Text("Earth", style: TextStyle(color: Color(AppColors.white,), fontWeight: FontWeight.w700, fontSize: 24)),
          FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),backgroundColor: Color(AppColors.red),onPressed: (){}, child: Icon(Icons.arrow_forward_ios, color: Color(AppColors.white),),
          )
        ],),
      ),
      ElevatedButtonDesign(text: 'Explore Earth')
          ]

      ),
    );
  }

}