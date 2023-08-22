import 'dart:convert';

import 'package:citreas/models/chartModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_charts/charts.dart';

class SelectCoinController extends GetxController {
  late TrackballBehavior trackballBehavior;
  var itemChart = <ChartModel>[].obs;
  var isRefresh = true.obs;
  var days = 30.obs;

  @override
  void onInit() {
    getChart();
    trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.onInit();
  }

  void setDays(String txt) {
    if (txt == 'D') {
      days.value = 1;
    } else if (txt == 'W') {
      days.value = 7;
    } else if (txt == 'M') {
      days.value = 30;
    } else if (txt == '3M') {
      days.value = 90;
    } else if (txt == '6M') {
      days.value = 180;
    } else if (txt == 'Y') {
      days.value = 365;
    }
    getChart();
  }

  Future<void> getChart() async {
    String url =
        'https://api.coingecko.com/api/v3/coins/ohlc?vs_currency=usd&days=' +
            days.value.toString();

    isRefresh.value = true;

    var response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    });

    isRefresh.value = false;

    if (response.statusCode == 200) {
      Iterable x = json.decode(response.body);
      List<ChartModel> modelList =
          x.map((e) => ChartModel.fromJson(e)).toList();
      itemChart.value = modelList;
    } else {
      print(response.statusCode);
    }
  }
}
