import 'package:get/get.dart';

class TestController extends GetxController {
  RxBool isVisible = false.obs;

  void changeVisibility() {
    isVisible.value = !isVisible.value;
  }

  RxInt increment = 1.obs;
  void incrementFunc() {
    increment++;
    print('$increment');
  }

  void decrementFunc() {
    if (increment.value == 0) {
      Get.snackbar('Warning', 'Value is 0');
      print('$increment');
    } else {
      increment--;
      print('$increment');
    }
  }
}
