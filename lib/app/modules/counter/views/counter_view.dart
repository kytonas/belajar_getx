import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

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
            Text("Hitungan ke : "),
            Obx(
              () => Text(controller.bilangan.toString()),
            ),
            const SizedBox(height: 10), // Add spacing between text and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.tambahSatu();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    controller.kurangSatu();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    controller.reset();
                  },
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
