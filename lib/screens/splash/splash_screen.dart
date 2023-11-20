import 'package:app_tarea/screens/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(   
      init: SplashController(),
      builder: (controller){       
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } 
    );
  }
}