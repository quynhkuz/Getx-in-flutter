import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/counter.dart';
import 'secondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final myapp = Get.put(MyCounter());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetxControler"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                myapp.count.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(SecondScreen());
                },
                child: Text("Go To SecondScreen")),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "How are you today",
            "Very bad",
            backgroundColor: Colors.yellow,
            // snackPosition: SnackPosition.BOTTOM,
            duration: Duration(days: 10),
            mainButton: TextButton(onPressed: () {
              Get.closeCurrentSnackbar();
            }, child: Text("Ok",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),))
          );
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
