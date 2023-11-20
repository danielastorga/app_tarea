import 'package:app_tarea/core/theme/app_theme.dart';
import 'package:app_tarea/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            body: Obx(
              () {                             
                return ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: controller.stations.length,
                  itemBuilder: (context, index) {
                    final station = controller.stations[index];
                    return Container(
                      margin: EdgeInsets.only(top:10.0),
                        decoration: BoxDecoration(
                          color: AppTheme.grayBackground,
                          border: Border.all(
                            color: AppTheme.blackLight,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Hero(
                            tag: "${station.name}",
                            child: Text(
                              "${station.name}",
                              style: const TextStyle(
                                color: AppTheme.pinkText,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Text(
                              "Language: ${station.language} - Clickcount: ${station.clickcount}"),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            controller.goDetail(station: station);
                          },
                        ));
                  });
              } ,
            ),
          );
        });
  }
}
