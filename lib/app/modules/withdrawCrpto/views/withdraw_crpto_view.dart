import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/withdraw_crpto_controller.dart';

class WithdrawCrptoView extends GetView<WithdrawCrptoController> {
  const WithdrawCrptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WithdrawCrptoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WithdrawCrptoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
