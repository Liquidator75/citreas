import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ethereum_controller.dart';

class EthereumView extends GetView<EthereumController> {
  const EthereumView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EthereumView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EthereumView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
