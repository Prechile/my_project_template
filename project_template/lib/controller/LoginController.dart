
import 'package:get/get.dart';

import '../api/service/LocalService.dart';
import '../api/service/UserService.dart';

class LoginController extends GetxController{
  UserService userService;
  LocalService localService;

  LoginController({required this.userService, required this.localService});


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }


  login() async{
    try{

    }catch(ex){
      ex;
    }

  }



  @override
  void onClose() {
    super.dispose();
  }

}