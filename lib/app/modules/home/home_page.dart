import 'dart:ui';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Obx(
              () => Text(
                controller.contador.toString(),
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Obx(() => Text('O app já foi para o segundo plano ${controller.segundoPlano.toString()} vezes!')),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
