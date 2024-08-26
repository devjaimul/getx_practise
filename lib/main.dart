import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/constant/app_colors.dart';
import 'package:getx_practise/controller/bindings.dart';
import 'package:getx_practise/routes/route_names.dart';
import 'package:getx_practise/routes/route_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(centerTitle: true,
                  backgroundColor: AppColors.primaryColor)),
      initialRoute: RouteNames.homeScreen,
      getPages: RoutePages.routes,
      initialBinding: ControllerBindings(),
    );
  }
}
