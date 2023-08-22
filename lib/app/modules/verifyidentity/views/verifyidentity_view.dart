import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verifyidentity_controller.dart';

class VerifyidentityView extends GetView<VerifyidentityController> {
  const VerifyidentityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyidentityView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerifyidentityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
