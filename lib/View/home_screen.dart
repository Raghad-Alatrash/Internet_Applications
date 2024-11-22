import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_applications/Controller/home_controller.dart';
import 'package:internet_applications/Controller/splash_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.98, -0.21),
              end: Alignment(-0.98, 0.21),
              colors: [
                Color(0xFF1A649A),
                Color(0xFF034473),
              ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: ListView(
              children:[ Center(
                  child: InkWell(
                      onTap: controller.navToLogIn,
                      child: Text("home"))
              ),]
          )

      ),
    );
  }
}
