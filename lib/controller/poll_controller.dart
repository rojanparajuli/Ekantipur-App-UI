import 'package:get/get.dart';

class PollController extends GetxController {
  var selectedOption = RxnInt();
  var submitted = false.obs;

  final Map<int, double> results = {
    0: 58.82,
    1: 17.65,
    2: 17.65,
    3: 5.88,
  };

  void selectOption(int? option) {
    selectedOption.value = option;
  }

  void submit() {
    submitted.value = true;
  }
}
