import 'package:flutter/material.dart';
import 'screens/authscreens/splashscreens/splash_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen1(),

      //   routes: {
      //   '/login': (context) => LoginScreen(),
      //   '/signup': (context) => SignupScreen(),
      //   '/home': (context) => HomeScreen(),
      // },
    );
  }
}
