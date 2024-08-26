import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  
  CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hitungan ke-"),
              Obx(
                () => Text(controller.bilangan.toString()),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.tambahSatu();
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.kurangSatu();
                },
                child: Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.reset();
                },
                child: Icon(Icons.refresh),
              ),
            ],
        ),
      )
    );
  }
}
