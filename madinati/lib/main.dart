// main.dart
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:madinati/structure/auth/signin_screen.dart';
import 'package:madinati/structure/auth/signup_screen.dart';
import 'package:madinati/structure/auth/validation.dart';
import 'package:madinati/structure/navigation.dart';
import 'package:madinati/structure/profile_screen.dart';
import 'package:madinati/structure/route_navigation.dart';
import 'package:madinati/structure/splash_screen.dart';
import 'package:madinati/structure/home_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const RouteNavigation(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madinati',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/verify': (context) => const PhoneVerificationScreen(),
        '/home': (context) => const Home(),
        '/navigation': (context) => const MainNavigation(),
      },
    );
  }
}