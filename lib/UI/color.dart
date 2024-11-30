// import 'package:flutter/material.dart';
//
// const primaryColor = Color(0xFF004577);
// const secondary = Color(0x3F06235B);
// //const accentCanvasColor = Color(0xFF3E3E61);
// final actionColor = const Color(0xFF1A649A).withOpacity(0.6);
// final divider = Divider(color: Colors.white.withOpacity(0.3), height: 1);
// const Color iconColor = Colors.white;
// const textPrimaryColor = Colors.white;
// const textSecondaryColor = Colors.grey;
// const textAccentColor = Color(0xFF1A649A);
//
// const LinearGradient backgroundWidget = LinearGradient(
//   colors: [
//
//     Color(0xFF1A649A),
//     Color(0xFF0596FF),
//   ],
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
// );
// const LinearGradient backgroundGradient = LinearGradient(
//   colors: [
//     Color(0xFF034473),
//     Color(0xFF1A649A),
//
//   ],
//   begin: Alignment(0.98, -0.21),
//   end: Alignment(-0.98, 0.21),
// );

import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF2196F3),
    canvasColor: const Color(0xFFF5F5F5),
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF2196F3),
    ),
    colorScheme: const ColorScheme.light(
      primaryContainer: Color(0xFF2196F3),
      secondary: Color(0xFF03A9F4),
      primary: Color(0xFF2196F3),
      onPrimary: Colors.white,
      surface: Colors.white,
      onSurface: Color(0xFF424242),
      background: Colors.white,
      onBackground: Color(0xFF424242),
    ),
    iconTheme: const IconThemeData(color: Color(0xFF616161)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF212121)),
      bodyMedium: TextStyle(color: Color(0xFF424242)),
    ),
    dividerColor: Color(0xFFBDBDBD),
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF1A649A),
    canvasColor: const Color(0xFF034473),
    //buttonColor

    scaffoldBackgroundColor: const Color(0xFF121212),
    buttonTheme: ButtonThemeData(buttonColor: Color(0xFF1A649A)),
    colorScheme: const ColorScheme.dark(
      primaryContainer: Color(0x3F06235B),
      secondary: Color(0x3F06235B),
      primary: Color(0xFF1A649A),

    ),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    dividerColor: Colors.white24,
  );

  static LinearGradient backgroundGradient(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return LinearGradient(
      colors: isDarkMode
          ? [const Color(0xFF1A649A), const Color(0xFF034473)]
          : [const Color(0xFF2196F3),
        const Color(0xFFBBDEFB)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );



  }
  static LinearGradient buttonGradient(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return LinearGradient(
      colors: isDarkMode
          ? [const Color(0xFF0596FF),
        const Color(0xFF052F4D)]
          : [
        const Color(0xFF2196F3),
        const Color(0xFFBBDEFB)
      ], // تدرج أزرق فاتح
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}




// class AppTheme {
//   static final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: const Color(0xFF2196F3), // أزرق فاتح
//
//     canvasColor: const Color(0xFFF5F5F5), // رمادي فاتح جدًا
//     scaffoldBackgroundColor: Colors.white,
//
//     buttonTheme: ButtonThemeData(
//       buttonColor: const Color(0xFF2196F3), // نفس لون primaryColor
//     ),
//
//     colorScheme: const ColorScheme.light(
//       primaryContainer: Color(0xFFE3F2FD), // أزرق فاتح جدًا
//       secondary: Color(0xFF03A9F4), // أزرق فاتح ثانوي
//       primary: Color(0xFF2196F3), // نفس لون primaryColor
//       onPrimary: Colors.white, // لون النص على الخلفية الأساسية
//       surface: Colors.white,
//       onSurface: Color(0xFF424242), // رمادي داكن للنصوص
//       background: Colors.white,
//       onBackground: Color(0xFF424242), // رمادي داكن للنصوص
//     ),
//
//     iconTheme: const IconThemeData(color: Color(0xFF616161)), // رمادي متوسط
//
//     textTheme: const TextTheme(
//       bodyLarge: TextStyle(color: Color(0xFF212121)), // رمادي داكن جدًا
//       bodyMedium: TextStyle(color: Color(0xFF424242)), // رمادي داكن
//     ),
//
//     dividerColor: Color(0xFFBDBDBD), // رمادي فاتح
//   );
//   static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: const Color(0xFF1A649A),
//     canvasColor: const Color(0xFF034473),
//
//     //buttonColor
//
//     scaffoldBackgroundColor: const Color(0xFF121212),
//     buttonTheme: ButtonThemeData(buttonColor: Color(0xFF1A649A)),
//     colorScheme: const ColorScheme.dark(
//       primaryContainer: Color(0x3F06235B),
//       secondary: Color(0x3F06235B),
//       primary: Color(0xFF1A649A),
//     ),
//     iconTheme: const IconThemeData(color: Colors.white),
//     textTheme: const TextTheme(
//       bodyLarge: TextStyle(color: Colors.white),
//       bodyMedium: TextStyle(color: Colors.white70),
//     ),
//     dividerColor: Colors.white24,
//
//   );
//
//   static LinearGradient backgroundGradient(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     return LinearGradient(
//       colors: isDarkMode
//           ? [const Color(0xFF1A649A),
//         const Color(0xFF034473)]
//           : [
//               const Color(0xFF2196F3),
//               const Color(0xFFBBDEFB)
//             ], // تدرج أزرق فاتح
//       begin: Alignment.topLeft,
//       end: Alignment.bottomRight,
//     );
//   }
//   static LinearGradient buttonGradient(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     return LinearGradient(
//       colors: isDarkMode
//           ? [const Color(0xFF0596FF),
//         const Color(0xFF052F4D)]
//           : [
//               const Color(0xFF2196F3),
//               const Color(0xFFBBDEFB)
//             ], // تدرج أزرق فاتح
//       begin: Alignment.topLeft,
//       end: Alignment.bottomRight,
//     );
//   }
// }
// begin: const Alignment(0.98, -0.21),
// end: const Alignment(-0.98, 0.21),
