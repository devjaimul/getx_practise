import 'package:get/get.dart';

import 'home_controller.dart';


class ControllerBindings extends Bindings{
  @override
  void dependencies(){
    Get.put<HomeController>(HomeController());
  }
}