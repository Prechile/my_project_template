import 'package:get/get.dart';

import '../api/service/LocalService.dart';
import '../api/service/UserService.dart';

class RegisterController extends GetxController{
  UserService userService;
  LocalService localService;

  RegisterController({required this.userService, required this.localService});
}