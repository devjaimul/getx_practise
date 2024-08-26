import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/controller.dart';
import 'package:getx_practise/image_picker.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                  value: controller.opacity.value,
                  onChanged: (value) {
                    controller.example(value);
                  }),
            ),
            SizedBox(
              height: 30,
            ),

            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  Switch(
                      value: controller.notification.value,
                      onChanged: (value) {
                        controller.example2(value);
                      })
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: controller.fruit.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: (){
                      if(controller.fruitList.contains(controller.fruit[index].toString()))
                      {
                       controller.removeFruitList(controller.fruit[index].toString());
                      }
                      else{
                        controller.addFruitList(controller.fruit[index].toString());
                      }
                    },
                    title: Text(controller.fruit[index].toString()),
                    trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: controller.fruitList.contains(controller.fruit[index].toString())? Colors.red : Colors.white,
                    ),)
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(ImagePicker());
      }
      ,child: Icon(Icons.camera_alt_outlined),),
    );
  }
}
