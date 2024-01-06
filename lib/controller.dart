import 'package:get/get.dart';

class Controller extends GetxController {
  var selectedContIndex = 0.obs;
  late List<bool> isSelected;
  Controller() {
    isSelected = List.generate(4, (index) => false).obs;
  }
  void toggleIcon(int index) {
    isSelected[index] = !isSelected[index];
  }
}
