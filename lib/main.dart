import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:internet_applications/Bindings/splash_bindings.dart';
import 'package:internet_applications/View/splash_screen.dart';

import 'Bindings/initial_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      GetMaterialApp(

          debugShowCheckedModeBanner: false,
          initialRoute: "/splash",
          initialBinding: InitialBindings(),

          getPages: [


            GetPage(
              name: "/splash",
              page: () =>  SplashScreen(),
              binding: SplashBindings(),
            ),



          ]
      );

  }
}

