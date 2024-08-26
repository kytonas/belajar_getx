import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Maksimal 20',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green);
    }
    else bilangan.value++;
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Minimal 0',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red);
    }
    else bilangan.value--;
  }

  void reset() {
    bilangan.value = 0;
  }
}
