import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/Global_widget/custom_button.dart';
import 'package:getx_practise/controller/home_controller.dart';
import 'package:getx_practise/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder <HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const HeadingTwo(data: 'Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeadingTwo(
                data: controller.value.toString(),
                color: Colors.black,
                fontSize: Get.height * .06,
              ),
              SizedBox(height: Get.height *.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(onPressed: (){
                    controller.decrement();
                  },
                    color: Colors.red,
                    icon: Icons.remove,
                  ),
                  CustomButton(
                    onPressed: () {
                      controller.increment();
                    },
                  ),

                ],
              ),
              SizedBox(height: Get.height *.03,),
              CustomButtonTwo(onPressed: (){
                controller.reset();
              }, data: 'Reset')

            ],
          ),
        ),
      );
    },);
  }
}
