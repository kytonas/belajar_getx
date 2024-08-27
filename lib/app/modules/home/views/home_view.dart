import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
                height: 16), // Menambahkan jarak antara teks dan tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/counter');
                  },
                  child: Text('Counter Page'),
                ),
                const SizedBox(width: 16), // Menambahkan jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/biodata');
                  },
                  child: Text('Biodata Page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
