import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/counter.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  final secondscreen = Get.find<MyCounter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SecondScreen"),
      ),

      body: Center(
        child: Obx(
          () => Text(
            secondscreen.count.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          secondscreen.changer();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
