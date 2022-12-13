import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';

class UpadteDialog {
  UpadteDialog() {
    Get.defaultDialog(
        backgroundColor: secondaryColor,
        radius: 10,
        title: "Mise à jour disponible",
        middleText: "Télécharger la nouvelle version ?",
        textCancel: "Fermer",
        textConfirm: "Ok",
        onConfirm: () async {
          await launch("https://play.google.com/store/apps/details?id=com.prechil.github.bankivi");
          if (Get.isDialogOpen!) {
            Get.back();
          }
        });
  }
}
