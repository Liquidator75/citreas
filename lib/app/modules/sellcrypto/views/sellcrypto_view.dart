import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sellcrypto_controller.dart';

class SellcryptoView extends GetView<SellcryptoController> {
  const SellcryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SellcryptoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SellcryptoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
