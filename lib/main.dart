import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:internet_applications/Bindings/home_bindings.dart';
import 'package:internet_applications/Bindings/login_bindings.dart';
import 'package:internet_applications/Bindings/register_bindings.dart';
import 'package:internet_applications/Bindings/splash_bindings.dart';
import 'package:internet_applications/UI/color.dart';
import 'package:internet_applications/View/home_screen.dart';
import 'package:internet_applications/View/login_screen.dart';
import 'package:internet_applications/View/register_screen.dart';
import 'package:internet_applications/View/splash_screen.dart';

import 'Bindings/initial_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(
    savedThemeMode: savedThemeMode,
  ));
}
// hallo raghed
//hi
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.savedThemeMode});
  final AdaptiveThemeMode? savedThemeMode;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(

        light: AppTheme.lightTheme,
        dark: AppTheme.darkTheme,





        initial: savedThemeMode ?? AdaptiveThemeMode.light,
        builder: (ThemeData light, ThemeData dark) => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: "/splash",
                initialBinding: InitialBindings(),
                theme: light,
                darkTheme: dark,
                getPages: [
                  GetPage(
                    name: "/splash",
                    page: () => const SplashScreen(),
                    binding: SplashBindings(),
                  ),
                  GetPage(
                    name: "/login",
                    page: () => const LoginScreen(),
                    binding: LoginBindings(),
                  ),
                  GetPage(
                    name: "/signup",
                    page: () => const RegisterScreen(),
                    binding: RegisterBindings(),
                  ),
                  GetPage(
                    name: "/home",
                    page: () => const HomeScreen(),
                    binding: HomeBindings(),
                  ),
                ]));
  }
}
