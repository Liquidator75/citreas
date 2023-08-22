import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tether_controller.dart';

class TetherView extends GetView<TetherController> {
  const TetherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TetherView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TetherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
