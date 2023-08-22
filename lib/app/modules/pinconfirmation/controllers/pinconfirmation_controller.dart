import 'package:get/get.dart';

class PinconfirmationController extends GetxController {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  final List<int> values = [1, 2, 3, 4, 5];
  final RxString inputText = ''.obs;
  final List<RxBool> activities = List.generate(5, (_) => false.obs);
  final List<RxBool> clears = List.generate(5, (_) => false.obs);
  final RxInt currentIndex = 0.obs;
  final RxString message = ''.obs;

  void updateInputText(int index) {
    if (currentIndex.value >= activities.length) {
      inputText.value = '';
      currentIndex.value = 0;
      clears.forEach((clear) => clear.value = false);
      activities.forEach((activity) => activity.value = false);
    }

    if (index == 11) {
      if (currentIndex.value > 0) {
        currentIndex.value--;
        clears[currentIndex.value].value = false;
        activities[currentIndex.value].value = false;
        if (inputText.value.isNotEmpty) {
          inputText.value =
              inputText.value.substring(0, inputText.value.length - 1);
        }
      }
    } else {
      if (index >= 0 && index < numbers.length) {
        inputText.value += numbers[index].toString();
        clears[currentIndex.value].value = false;
        activities[currentIndex.value].value = true;
        currentIndex.value++;
      }
    }

    if (currentIndex.value == values.length + 1) {
      // Add + 1 here
      if (inputText.value == values.join()) {
        print('Success');
        inputText.value = '';
        currentIndex.value = 0;
        clears.forEach((clear) => clear.value = false);
        activities.forEach((activity) => activity.value = false);
      } else {
        inputText.value = '';
        currentIndex.value = 0;
        message.value = 'Incorrect PIN';
        clears.forEach((clear) => clear.value = false);
        activities.forEach((activity) => activity.value = false);
      }
    }

    print('inputText: ${inputText.value}');
  }
}
