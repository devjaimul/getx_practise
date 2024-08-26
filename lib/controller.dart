import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble opacity = .4.obs;
  RxBool notification = false.obs;

  RxList <String> fruit=['apple','banana','mango','pineapple'].obs;
  RxList fruitList=[].obs;

  example(double value) {
    opacity.value = value;
  }

  example2(bool value) {
    notification.value = value;
  }

  addFruitList(String value){
    fruitList.add(value);
  }

  removeFruitList(String value){
    fruitList.remove(value);
  }
}
