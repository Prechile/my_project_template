import 'package:get/get.dart';

import '../api/repository/LocalRepository.dart';
import '../api/repository/UserRepository.dart';
import '../api/service/LocalService.dart';
import '../api/service/UserService.dart';
import '../controller/LoginController.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserService>(UserRepository());
    Get.put<LocalService>(LocalRepository());

    Get.put<LoginController>(LoginController(userService: Get.find(), localService: Get.find()));

  }
}