import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt count=0.obs;

  void increment(){
    count+=2;
  }
  void decrement(){
    count-=2;
  }
}