import 'package:get/get.dart';

import '../api/repository/LocalRepository.dart';
import '../api/repository/UserRepository.dart';
import '../api/service/LocalService.dart';
import '../api/service/UserService.dart';
import '../controller/RegisterController.dart';


class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserService>(UserRepository());
    Get.put<LocalService>(LocalRepository());

    Get.put<RegisterController>(RegisterController(userService: Get.find(), localService: Get.find()));

  }
}