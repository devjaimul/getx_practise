import 'package:get/get.dart';

class HomeController extends GetxController {
  int value = 0;

  increment() {
    value++;
    update();
  }

  decrement() {
    value--;
    update();
  }

  reset() {
    value = 0;
    update();
  }
}
