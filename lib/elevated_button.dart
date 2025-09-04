import 'package:flutter/material.dart';
import 'package:space_app/colors/app_colors.dart';
import 'package:space_app/screens/home_screen.dart';

class ElevatedButtonDesign extends StatelessWidget{
  String text;
  ElevatedButtonDesign({required this.text});
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsetsGeometry.symmetric(vertical: 1, horizontal: 8),

      child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(AppColors.red))
          , child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(text, style: TextStyle(color: Color(AppColors.white), fontWeight: FontWeight.w600, fontSize: 20),),
                  Icon(Icons.arrow_forward, color: Color(AppColors.white),
                  ),
                ]
            ),
          )
      ),
    );
  }

}