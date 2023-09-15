import 'package:citreas/app/modules/sendcryptoconfirmation/views/sendcryptoconfirmation_view.dart';
import 'package:get/get.dart';

class AmountInputController extends GetxController {
  final enteredNumber = ''.obs;
  final isBTCMode = false.obs;

  void deleteEnteredNumber() {
    if (enteredNumber.value.length > 1) {
      enteredNumber.value =
          enteredNumber.value.substring(0, enteredNumber.value.length - 1);
    } else {
      enteredNumber.value = '0';
    }
  }

  void updateEnteredNumber(String value) {
    if (enteredNumber.value == '0') {
      enteredNumber.value = value;
    } else {
      enteredNumber.value += value;
    }
  }

  void convertEnteredNumber(double currentPrice, String symbol) {
    double currentValue =
        double.parse(enteredNumber.value.replaceAll(RegExp('[^0-9.]'), ''));
    double convertedValue;
    String convertedText;

    if (isBTCMode.value) {
      convertedValue = currentValue * currentPrice;
      convertedText = '${convertedValue.toStringAsFixed(1)} USD';
    } else {
      convertedValue = currentValue / currentPrice;
      convertedText = '${convertedValue.toStringAsFixed(7)} $symbol';
    }

    enteredNumber.value = convertedText;
    isBTCMode.value = !isBTCMode.value; // Toggle the display mode
  }

  void clearEnteredNumber() {
    enteredNumber.value = '0 USD';
  }

  void navigateToNextPage() {
    Get.to(SendcryptoconfirmationView());
  }
}
