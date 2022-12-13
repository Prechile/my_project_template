import 'package:get/get.dart';

import '../api/service/LocalService.dart';
import '../api/service/UserService.dart';

class HomeController extends GetxController{
  UserService userService;
  LocalService localService;

  HomeController({required this.userService, required this.localService});


}