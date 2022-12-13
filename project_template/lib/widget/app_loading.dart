import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

class AppLoading {
  show() {
    Get.dialog(
      AppLoadingWidget(),
      barrierDismissible: false,
    );
  }


}

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: CircularProgressIndicator(color: loadingColor),
      ),
    );
  }
}

