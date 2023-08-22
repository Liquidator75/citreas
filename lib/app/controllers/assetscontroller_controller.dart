import 'package:citreas/models/assests_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AssetscontrollerController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Assestsplatform> assetsList = <Assestsplatform>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchAssets();
  }
  //TODO: Implement AssetscontrollerController

  final count = 0.obs;

  fetchAssets() async {
    try {
      isLoading(true);
      var response = await http
          .get(Uri.parse('https://api.coingecko.com/api/v3/asset_platforms'));
      List<Assestsplatform> assets = assestsplatformFromJson(response.body);
      assetsList.value = assets;
    } finally {
      isLoading(false);
    }

    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
    }

    void increment() => count.value++;
  }
}
