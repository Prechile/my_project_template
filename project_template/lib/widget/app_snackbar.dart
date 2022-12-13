import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  final String title;
  final String message;
  final Color color;

  AppSnackBar(
      {this.color = Colors.white, required this.title, required this.message});

  Show() {
    Get.snackbar(title, message, backgroundColor: color);
  }
}
