import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pets_shop/core/theme/app_colors.dart';

class ShowFlutterToast {
  static void showToast({required String message, required ToastState state}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: _choseToastColor(state: state),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

enum ToastState { success, error, warning }

Color _choseToastColor({required ToastState state}) {
  Color color;
  switch (state) {
    case ToastState.success:
      color = AppColors.successGreen;
      break;
    case ToastState.warning:
      color = AppColors.warningOrange;
      break;
    case ToastState.error:
      color = AppColors.errorRed;
      break;
  }
  return color;
}
