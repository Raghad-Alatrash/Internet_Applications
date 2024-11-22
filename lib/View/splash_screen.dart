import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_applications/Controller/splash_controller.dart';
import 'package:internet_applications/View/tool_tip_widget.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../UI/color.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          gradient: AppTheme.backgroundGradient(context),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: ListView(
            children:[




              ToolTipWidget(childWidget:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ), contentText: 'helllloo',),
              Center(


               child: InkWell(

                  onTap: controller.navToLogIn,
                  child: Text("Splash"))
            ),
              Center(child:Card(
                child: SwitchListTile(
                  title: const Text("Change Theme"),
                  secondary:Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isDarkMode?Colors.white:Colors.black,
                    ),
                    child: Icon(
                      controller.isDarkMode?Icons.nightlight_round:Icons.wb_sunny_rounded,
                      color:  controller.isDarkMode?Colors.black:Colors.white,
                    ),
                  ) ,
                  value:  controller.isDarkMode, onChanged: (bool value) {

                    controller.isDarkMode=value;

                  if(value){
                    AdaptiveTheme.of(context).setDark();
                  }else{
                    AdaptiveTheme.of(context).setLight();
                  }
                },) ,
              ))
            ]
          )

          ),
    );
  }
}
