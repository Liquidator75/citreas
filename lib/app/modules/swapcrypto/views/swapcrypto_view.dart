import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/swapcrypto_controller.dart';

class SwapcryptoView extends GetView<SwapcryptoController> {
  const SwapcryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwapcryptoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SwapcryptoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
