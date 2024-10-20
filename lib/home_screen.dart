import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/controller.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({super.key});

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  final CounterController controller =CounterController();

  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Obx(() {
            return   Text(controller.count.toString(),style: TextStyle(fontSize: 50),);
          },)
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.decrement();
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
