

import 'package:app_tarea/screens/detail/detail_screen.dart';
import 'package:app_tarea/screens/home/home_screen.dart';
import 'package:app_tarea/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  // InjectionDependency.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 164, 80, 130)),
        useMaterial3: true,
      ),
      home:  const HomeScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/home': (context) => const HomeScreen(),
      //   '/settings': (context) => const DetailScreen(),
      // },
    );
  }
}


