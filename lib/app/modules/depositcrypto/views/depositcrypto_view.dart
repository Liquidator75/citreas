import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/depositcrypto_controller.dart';

class DepositcryptoView extends GetView<DepositcryptoController> {
  const DepositcryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DepositcryptoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DepositcryptoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
