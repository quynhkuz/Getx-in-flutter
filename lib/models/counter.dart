

import 'package:get/get.dart';

class MyCounter extends GetxController
{
  // var _name = "HelloWorld";
  var _count = 10.obs;

  get count => _count;

  void changer()
  {
    _count.value++;
  }
}

class StoreController extends GetxController {}