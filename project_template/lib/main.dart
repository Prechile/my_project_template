import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_template/routes/app_page.dart';
import 'package:flutter_project_template/routes/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'bindings/initials_binding.dart';
import 'constants/app_colors.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  const SystemUiOverlayStyle(statusBarColor: primaryColor);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360,800),
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: 'project-template',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'DMSans',
              primaryColor: primaryColor,
              backgroundColor: primaryColor,
            ),
            initialBinding: InitialsBinding(),
            getPages: AppPage.pages,
            initialRoute: Routes.LOGIN,
          );
        }
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createdHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}


