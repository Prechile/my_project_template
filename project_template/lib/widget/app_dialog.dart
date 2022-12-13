import 'package:get/get.dart';

class AppDialog {
  final String title;
  final String message;

  AppDialog({this.title = "", this.message = ""});
  show() {
    Get.defaultDialog(
      title: title,
      onConfirm: () => Get.back(),
      middleText: message,
    );
  }
}
