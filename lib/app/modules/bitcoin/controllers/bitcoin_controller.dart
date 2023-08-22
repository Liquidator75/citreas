import 'dart:convert';
import 'package:citreas/models/chartModel.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BitcoinController extends GetxController {
  late TrackballBehavior trackballBehavior;

  final count = 0.obs;

  List<String> text = ['D', 'W', 'M', '3M', '6M', 'Y'];
  List<bool> textBool = [false, false, true, false, false, false];

  RxInt days = 30.obs;

  RxList<ChartModel> itemChart = <ChartModel>[].obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getChart();
    trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
    );
    super.onInit();
  }

  void increment() {
    count.value++;
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
    getChart(); // Fetch chart data when days value changes
  }

  Future<void> getChart() async {
    isLoading(true);

    String url =
        'https://api.coingecko.com/api/v3/coins/bitcoin/ohlc?vs_currency=usd&days=${days.value}';

    try {
      var response = await http.get(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      });

      if (response.statusCode == 200) {
        Iterable x = json.decode(response.body);
        List<ChartModel> modelList =
            x.map((e) => ChartModel.fromJson(e)).toList();
        itemChart.value = modelList; // Update itemChart using assignment
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading(false);
    }
  }
}
